5	List of Clouds	5	### IMPORTANT: Preamble required on server; omitted here. ####\r\n\r\nimport pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        pyxel.image(0).load(0, 0, 'sprites1.png')\r\n\r\n        # SOLN: Added this array\r\n        self.clouds = [(10, 10), (60, 20), (120, 5)]\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\n        # SOLN: Replaced 3 blt lines with for loop equivalent\r\n        for x, y in self.clouds:\r\n            pyxel.blt(x, y, 0, 0, 32, 56, 8)\r\nApp()	Soon we are going to make our clouds move. But before that, we must store them in a better way. We have more than one cloud, so we'll use a <b>list</b>.\r\n<br/><br/>\r\nImmediately after the <code>pyxel.image(0).load(...)</code> line in your <code>__init__(self)</code> function, write this line:\r\n<br/><br/><center><code>self.clouds = []</code></center>\r\n<br/><br/>This is an empty list of clouds. Your job is to add the clouds to this list: each cloud is a pair of <code>(x, y)</code> coordinates.\r\n<br/><br/>\r\nThen, in your <code>draw(self)</code> function, replace the 3 calls to <code>python.blt(...)</code> with a for loop:\r\n<br/<br/><center><code>for x, y in self.clouds:</code></center>\r\n<br/><br/>and fill in the loop so that each cloud is placed on the screen.	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites1.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
1	Change Background Color to Sky Blue	1	import pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\nApp()	On one of the lines in this code, a function is being called to clear the screen and paint it white.\r\n<br/><br/>\r\nChange this line so that the function paints the screen sky blue instead.	pass
2	Add a Cloud	2	import pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        # SOLN: Added this line\r\n        pyxel.image(0).load(0, 0, 'sprites1.png')\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\n        # SOLN: Added this line\r\n        #         x   y  img sx sy  w   h colkey\r\n        pyxel.blt(10, 10, 0, 0, 32, 56, 8, 12)\r\nApp()	Now that we've painted the sky, we need some clouds.\r\n<br/><br/>\r\nFirst we must load the image containing the clouds. To do so, copy this line:\r\n<br/>\r\n<br/><center><code>pyxel.image(0).load(0, 0, 'sprites1.png')</code></center>\r\n<br/>to your <code>__init__(self)</code> function. Place it <b>after</b> <code>pyxel.init(...)</code> but <b>before</b> <code>pyxel.run(...)</code>.\r\n<br/><br/>\r\nNext you must copy the cloud from the image to the screen. You do this using Pyxel's <b>blt</b> function:\r\n<br/><br/><center><code>pyxel.blt(x, y, img, sx, sy, width, height)</code></center>\r\n<br/>Call this function at the end of your <code>draw(self)</code> function. Place the cloud at <b>10</b> on the <code>x</code> axis and <b>10</b> on the <code>y</code> axis. The cloud is inside <code>img</code> 0, the cloud's <code>sx</code> is 0, its <code>sy</code> is 32, its <code>width</code> is 56 and its <code>height</code> is 8.\r\n<br><br/>To check your work, press the <b>GOAL</b> button and compare it to your work.	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites1.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
3	Add a Second Cloud	3	### IMPORTANT: Preamble required on server; omitted here. ####\r\n\r\nimport pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        pyxel.image(0).load(0, 0, 'sprites1.png')\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\n        pyxel.blt(10, 10, 0, 0, 32, 56, 8)\r\n        # SOLN: Added this line to blt second cloud\r\n        pyxel.blt(60, 20, 0, 0, 32, 56, 8)\r\nApp()	Use <code>pyxel.blt(...)</code> to add a second cloud to the screen. The cloud should be placed at (60, 20).	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites1.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
4	Add a Third Cloud	4	### IMPORTANT: Preamble required on server; omitted here. ####\r\n\r\nimport pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        pyxel.image(0).load(0, 0, 'sprites1.png')\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\n        pyxel.blt(10, 10, 0, 0, 32, 56, 8)\r\n        pyxel.blt(60, 20, 0, 0, 32, 56, 8)\r\n        pyxel.blt(120, 5, 0, 0, 32, 56, 8)\r\nApp()	Place a third cloud on the screen at (120, 5).	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites1.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
8	Draw the Player on the Screen	8	### IMPORTANT: Preamble required on server; omitted here. ####\r\n\r\nimport pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        pyxel.image(0).load(0, 0, 'sprites1.png')\r\n\r\n        self.clouds = [(10, 10), (60, 20), (120, 5)]\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\n        offset = (pyxel.frame_count / 4) % 160\r\n        for i in range(2):\r\n          for x, y in self.clouds:\r\n            pyxel.blt(x + (i * 160) - offset, y, 0, 0, 32, 56, 8)\r\n\r\n        # SOLN: Added this line\r\n        pyxel.blt(70, 50, 0, 0, 0, 16, 16)\r\nApp()	Now we need a player to move around on the screen. In image <code>0</code>, there is a girl at <code>(sx, sy)</code> of <code>(0, 0)</code> with a width of <code>16</code> and a height of <code>16</code>. Place her on the screen at <code>(x, y)</code> of <code>(70, 50)</code>.	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites1.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
6	Make the Clouds Move	6	### IMPORTANT: Preamble required on server; omitted here. ####\r\n\r\nimport pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        pyxel.image(0).load(0, 0, 'sprites1.png')\r\n\r\n        self.clouds = [(10, 10), (60, 20), (120, 5)]\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\n        # SOLN: Added this line\r\n        offset = (pyxel.frame_count / 4) % 160\r\n        for x, y in self.clouds:\r\n            # SOLN: Changed this line to include offset\r\n            pyxel.blt(x - offset, y, 0, 0, 32, 56, 8)\r\nApp()	Now let's make the clouds move. Directly above your <code>for</code> loop that places the clouds on the screen, write this line:\r\n<br/><br/><center><code>offset = (pyxel.frame_count / 4) % 160</code></center>\r\n<br/>This creates a new variable called <code>offset</code> that slowly counts up to 160 before resetting back to 0. It uses the <b>frame count</b> to do this. The frame count is the number of times the <code>draw(self)</code> function has been called since the game began.\r\n<br/><br/>\r\nNow look at your call to <code>pyxel.blt(...)</code>. Currently it draws each cloud to <code>(x, y)</code>, which never change. But if we want the clouds to move, we need to use the offset variable, which does change. So, modify the function call to use <code>(x - offset, y)</code> instead.	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites1.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
7	Wrap the Clouds Around the Screen	7	### IMPORTANT: Preamble required on server; omitted here. ####\r\n\r\nimport pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        pyxel.image(0).load(0, 0, 'sprites1.png')\r\n\r\n        self.clouds = [(10, 10), (60, 20), (120, 5)]\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_Q):\r\n            pyxel.quit()\r\n\r\n    def draw(self):\r\n        pyxel.cls(12)\r\n\r\n        offset = (pyxel.frame_count / 4) % 160\r\n        # SOLN: Added this outer for loop\r\n        for i in range(2):\r\n          for x, y in self.clouds:\r\n            # SOLN: Added + (i * 160) to x arg\r\n            pyxel.blt(x + (i * 160) - offset, y, 0, 0, 32, 56, 8)\r\nApp()	Run your game and wait for the clouds to disappear from the screen. After awhile the clouds disappear, then reappear later all at once. This doesn't look good.\r\n<br/><br/>To fix this, we'll create two copies of each cloud: one for each side of the screen.\r\n<br/><br/>First, put the <code>for</code> loop that draws your clouds inside a new <code>for</code> loop:\r\n<br/><br/><center><code>for i in range(2):</code></center>\r\n<br/>This will loop twice: first <code>i</code> will be 0, then it will be 1.\r\n<br/><br/>Then, in your call to <code>pyxel.blt(...)</code>, instead of drawing each cloud at <code>(x - offset, y)</code>, draw at <code>(x + (i * 160) - offset, y)</code>.	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites1.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
