from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from django.core.exceptions import ObjectDoesNotExist
from .models import Client
import base64

def index(request):
  return render(request, 'main/login.html', {})

def logout(request):
  resp = redirect('index')
  resp.delete_cookie('USERNAME')
  messages.success(request, 'You are now logged out of your account.')
  return resp

def login(request):
  if request.method == 'POST':
      username = request.POST.get("username", "")
      password = request.POST.get("password", "")
      try:
        client = Client.objects.get(username=username, password=password)
        resp = redirect('account')
        resp.set_cookie('USERNAME', base64.b64encode(bytes(username,
            encoding='ascii')))
        return resp
      except ObjectDoesNotExist:
        messages.error(request, 'The credentials you entered are invalid.')
        return redirect('index')
  else:
    messages.error(request, 'Please enter your credentials to continue.')
    return redirect('index')

def account(request):
    if 'USERNAME' in request.COOKIES:
        username = base64.b64decode(bytes(request.COOKIES['USERNAME'],
            encoding='ascii'))
        client = Client.objects.get(username=username)
        return render(request, 'main/account.html', {'client': client})
    messages.error(request, 'You must be logged in to access your account.')
    return redirect('index')

def transfer(request):
    if 'USERNAME' in request.COOKIES:
        username = base64.b64decode(bytes(request.COOKIES['USERNAME'],
            encoding='ascii'))
        client = Client.objects.get(username=username)
        return render(request, 'main/transfer.html', {'client': client})
    messages.error(request, 'You must be logged in to transfer funds.')
    return redirect('index')

def exectransfer(request):
  if 'USERNAME' in request.COOKIES:
      username = base64.b64decode(bytes(request.COOKIES['USERNAME'],
          encoding='ascii'))
  else:
      messages.error(request, 'You must be logged in to execute a transfer.')
      return redirect('index')
  if request.method != 'POST':
    messages.error(request, 'You must POST to execute a transfer.')
    return redirect('transfer')
  password = request.POST.get("password", "")
  try:
    client = Client.objects.get(username=username, password=password)
  except ObjectDoesNotExist:
    messages.error(request, 'The password you provided is incorrect; unable to transfer.')
    return redirect('transfer')
  recipient_id = request.POST.get("recipient_client_id", "")
  amount = request.POST.get("amount_to_transfer", "")
  try:
    recipient = Client.objects.get(id=recipient_id)
  except ValueError:
    messages.error(request, "You must enter a number for the recipient's client ID.")
    return redirect('transfer')
  except ObjectDoesNotExist:
    messages.error(request, 'No client exists with Client ID ' + recipient_id \
            + ', unable to transfer funds.')
    return redirect('transfer')
  try:
      amount = int(amount)
  except ValueError:
      messages.error(request, "You must enter a number for the amount to transfer.")
      return redirect('transfer')
  if amount > client.acct_balance_tzs:
      messages.error(request, 'You cannot transfer ' + str(amount) + ' TZS, ' \
              + 'this exceeds your current account balance of ' \
              + str(client.acct_balance_tzs) + 'TZS.')
      return redirect('transfer')
  client.acct_balance_tzs = client.acct_balance_tzs - amount
  recipient.acct_balance_tzs = recipient.acct_balance_tzs + amount
  client.save()
  recipient.save()
  messages.success(request, 'Successfully transferred ' + str(amount) + ' TZS from ' \
          + client.full_name + ' to ' + recipient.full_name + '; your new ' \
          + 'account balance is reflected below.')
  return redirect('account')

