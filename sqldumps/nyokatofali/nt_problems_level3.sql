56	Magari Mapya	Walimu wa Singida Secondary School wanatafutia magari mapya kwa shule yao. Wanahitaji kumi.\r\n<br/>\r\nYou have been given a function called <i>magariMapya</i> that takes a single variable called <i>mangapi</i>.\r\n<br/>\r\n<br/>If <i>mangapi</i> is greater than or equal to 10, return "Tosha". If not, return "Haitoshi."\r\n<br/><br/>Use <b>if blocks</b> to help you.	<block type="def" id="d%9jK5xNp[_d~j,,s)Jv" x="251" y="113">\r\n    <field name="funcname">magariMapya</field>\r\n    <field name="funcargs">mangapi</field>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntest = 1\r\ntests = [i for i in range(0, 21)]\r\ndef verifier_results():\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in tests:\r\n    answer = "Haitoshi"\r\n    if n >= 10:\r\n      answer = "Tosha"\r\n    NTPRINT("TEST %d) Do you answer '%s' for %d?" % (test, answer, n))\r\n    response = magariMapya(n)\r\n    if response == answer:\r\n        NTPRINT("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\n        verifier_results()\r\nNTPRINT("ALL TESTS PASSED.")\r\nverifier_results()	3
54	Negative or Positive?	You have been given a function called <i>negOrPos</i> that takes a single variable called <i>number</i>.\r\n<br/>\r\n<br/>If <i>number</i> is less than 0, return the word "Negative".\r\n<br/>If <i>number</i> is equal to 0, return the word "Zero".\r\n<br/>If <i>number</i> is greater than 0, return the word "Positive".\r\n<br/><br/>Use <b>if blocks</b> to help you.	<block type="def" id="d%9jK5xNp[_d~j,,s)Jv" x="251" y="113">\r\n    <field name="funcname">negOrPos</field>\r\n    <field name="funcargs">number</field>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntest = 1\r\nimport random\r\ntests = [random.randint(-10000,10000) for _ in range(1, 20)]\r\ntests.append(0)\r\ndef verifier_results():\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in tests:\r\n    answer = "Zero"\r\n    if n < 0:\r\n      answer = "Negative"\r\n    if n > 0:\r\n       answer = "Positive"\r\n    NTPRINT("TEST %d) Do you answer '%s' for %d?" % (test, answer, n))\r\n    response = negOrPos(n)\r\n    if response == answer:\r\n        NTPRINT("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\n        verifier_results()\r\nNTPRINT("ALL TESTS PASSED.")\r\nverifier_results()	3
57	Nyumba za Karatu	Wakuu wa Karatu wanapanga kujenga nyumba zaidi kwa watu wanaohamia pale. Wanahitaji 250 nyumba.\r\n<br/>\r\nYou have been given a function called <i>nyumbaZaidi</i> that takes a single variable called <i>ngapi</i>.\r\n<br/>\r\n<br/>If <i>ngapi</i> is less than 250, return "Haitoshi". If not, return "Tosha."\r\n<br/><br/>Use <b>if blocks</b> to help you.	<block type="def" id="d%9jK5xNp[_d~j,,s)Jv" x="251" y="113">\r\n    <field name="funcname">nyumbaZaidi</field>\r\n    <field name="funcargs">ngapi</field>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntest = 1\r\ntests = [i for i in range(240, 261)]\r\ndef verifier_results():\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in tests:\r\n    answer = "Haitoshi"\r\n    if n >= 250:\r\n      answer = "Tosha"\r\n    NTPRINT("TEST %d) Do you answer '%s' for %d?" % (test, answer, n))\r\n    response = nyumbaZaidi(n)\r\n    if response == answer:\r\n        NTPRINT("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\n        verifier_results()\r\nNTPRINT("ALL TESTS PASSED.")\r\nverifier_results()	3
55	Mambo ya Hela	You have been given a function called <i>mamboYaHela</i> that takes a single variable called <i>hela</i>.\r\n<br/>\r\n<br/>If <i>hela</i> is less than 0, return the word "Wanakudai".\r\n<br/>If <i>hela</i> is equal to 0, return the word "Sifuri".\r\n<br/>If <i>hela</i> is greater than 0, return the word "Mtajiri".\r\n<br/><br/>Use <b>if blocks</b> to help you.	<block type="def" id="d%9jK5xNp[_d~j,,s)Jv" x="251" y="113">\r\n    <field name="funcname">mamboYaHela</field>\r\n    <field name="funcargs">hela</field>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntest = 1\r\nimport random\r\ntests = [random.randint(-10000,10000) for _ in range(1, 20)]\r\ntests.append(0)\r\ndef verifier_results():\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (test-1, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in tests:\r\n    answer = "Sifuri"\r\n    if n < 0:\r\n      answer = "Wanakudai"\r\n    if n > 0:\r\n       answer = "Mtajiri"\r\n    NTPRINT("TEST %d) Do you answer '%s' for %d?" % (test, answer, n))\r\n    response = mamboYaHela(n)\r\n    if response == answer:\r\n        NTPRINT("\\t-> CORRECT")\r\n        test += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\n        verifier_results()\r\nNTPRINT("ALL TESTS PASSED.")\r\nverifier_results()	3
