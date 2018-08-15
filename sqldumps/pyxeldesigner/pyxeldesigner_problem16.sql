16	Draw the Mountain and Forest	16	### IMPORTANT: Preamble required on server; omitted here. ####\r\n\r\nimport pyxel\r\n\r\nclass App:\r\n    def __init__(self):\r\n        pyxel.init(160, 120, caption='Mchezo')\r\n\r\n        # SOLN: Changed this to sprites2.png\r\n        pyxel.image(0).load(0, 0, 'sprites2.png')\r\n\r\n        self.clouds = [(10, 10), (60, 20), (120, 5)]\r\n        self.player_x = 70\r\n        self.player_y = 50\r\n\r\n        pyxel.run(self.update, self.draw)\r\n\r\n    def update(self):\r\n        if pyxel.btnp(pyxel.KEY_ESCAPE):\r\n            pyxel.quit()\r\n\r\n        self.update_player()\r\n\r\n    def update_player(self):\r\n        if pyxel.btnp(pyxel.KEY_W) or pyxel.btnp(pyxel.KEY_UP):\r\n            self.player_y -= 2\r\n\r\n        if pyxel.btnp(pyxel.KEY_A) or pyxel.btnp(pyxel.KEY_LEFT):\r\n            self.player_x -= 2\r\n\r\n        if pyxel.btnp(pyxel.KEY_S) or pyxel.btnp(pyxel.KEY_DOWN):\r\n            self.player_y += 2\r\n\r\n        if pyxel.btnp(pyxel.KEY_D) or pyxel.btnp(pyxel.KEY_RIGHT):\r\n            self.player_x += 2\r\n\r\n    def draw(self):\r\n    \t# clear screen, paint sky blue\r\n        pyxel.cls(12)\r\n\r\n        # SOLN: Added this call to blt for drawing horizon\r\n        # draw horizon + mountain + forest\r\n        pyxel.blt(0, 0, 0, 0, 120, 160, 120)\r\n\r\n        # draw clouds\r\n        offset = (pyxel.frame_count / 4) % 160\r\n        for i in range(2):\r\n          for x, y in self.clouds:\r\n            pyxel.blt(x + (i * 160) - offset, y, 0, 0, 32, 56, 8)\r\n\r\n        # draw girl\r\n        pyxel.blt(self.player_x, self.player_y, 0, 0, 0, 16, 16, 12)\r\n\r\nApp()	Now let's draw the mountain and forest underneath the sky. First, in <code>pyxel.image(0).load(...)</code>, change the image from <code>sprites1.png</code> to <code>sprites2.png</code>.\r\n<br/><br/>\r\nThen, in your <code>draw(self)</code> function, add a call to <code>pyxel.blt</code> <b>immediately after you clear the screen</b>. Place the horizon image at <code>0</code> on the X axis and <code>0</code> on the Y axis. It's in image <code>0</code>, its <code>sx</code> is <code>0</code>, its <code>sy</code> is <code>120</code>, its width is <code>160</code> and its height is <code>120</code>.\r\n<br/><br/>\r\n<span style="color: red; font-weight: bold">IMPORTANT: Notice how your code is getting bigger.</span> Haiwezekani kukumbuka mambo yote yanayotokea hapa. Kwa hiyo, uandike comments. In Python, comments start with the symbol <code>#</code>. In your <code>draw(self)</code> function, you are doing four things: clearing the screen, drawing the mountain and forest, drawing clouds, and drawing the girl; so, place the following comments in the appropriate places:\r\n<ul>\r\n  <li><code># clear screen and paint it sky blue</code></li>\r\n  <li><code># draw mountain and forest</code></li>\r\n  <li><code># draw clouds</code></li>\r\n  <li><code># draw girl</code></li>\r\n</ul>	# Note: PD_STATIC_IMAGES_PATH varies based on address\r\n# of server and thus is prepended to this value in views.py\r\nimport os, requests\r\nBASE_DIR = os.path.dirname(os.path.abspath(__file__))\r\nfiles_to_load = ['sprites2.png']\r\nfor fname in files_to_load:\r\n  fpath = os.path.join(BASE_DIR, fname)\r\n  if not os.path.exists(fpath):\r\n    with open(fpath, 'wb') as f:\r\n      f.write(requests.get(PD_STATIC_IMAGES_PATH+fname).content)
