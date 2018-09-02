87	Volume of a Cube	You have been given a function called <code>cubeVolume</code> that takes a length <code>a</code> of a cube.\r\n<br/>\r\n<br/>\r\nReturn the volume of the cube.	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">cubeVolume</field>\r\n    <field name="funcargs">a</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [0, 1, 2, 3, 4, 5, 10, 1000, 10000, 3453, 234234, 43043, 888]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a in tests:\r\n    NT_ANSWER = a**3\r\n    NTPRINT("\\nTEST) Did you answer %s for %d?" % (NT_ANSWER, a))\r\n    response = cubeVolume(a)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	21
88	Volume of a Sphere	You have been given a function called <code>sphereVolume</code> that takes a radius <code>r</code> of a sphere.\r\n<br/>\r\n<br/>\r\nReturn the volume of the sphere. The formula for the volume of a sphere is:\r\n\r\n$$V = \\frac{4}{3} \\pi r^3 $$\r\n\r\n(<b>Hint</b>: To use the exact value of &pi; in Python, write <code>import math</code> at the top of your function. Then you can use <code>math.pi</code> anywhere inside your function.)	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">sphereVolume</field>\r\n    <field name="funcargs">r</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [0, 1, 2, 3, 4, 5, 10, 1000, 10000, 3453, 234234, 43043, 888]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor r in tests:\r\n    import math\r\n    NT_ANSWER = (4/3) *math.pi * (r**3)\r\n    NTPRINT("\\nTEST) Did you answer %s for %d?" % (NT_ANSWER, r))\r\n    response = sphereVolume(r)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	22
81	Append Form 1A Names to Lists	You have been given a function called <code>appendForm1ANames</code> that takes a list of names called <code>names</code>. \r\n<br/>\r\n<br/>Append "Husna", "John", "Shukuru,", "Kornelia", and "Hans" to the <i>names</i> list. Return the new list at the end.	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">appendForm1ANames</field>\r\n    <field name="funcargs">names</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [[], ["Severiana", "Irene", "Loveness"], ["Irene", "Irene", "Severiana", "Mary"], ["Donald", "Sara", "Loveness", "Magdalena", "Miraji"], ["Glory", "Severiana", "Irene", "Sara"], ["Sara"]]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor nlist in tests:\r\n    NT_ANSWER = nlist.copy()\r\n    NT_ANSWER.extend(['Husna', 'John', 'Shukuru', 'Kornelia', 'Hans'])\r\n    NTPRINT("\\nTEST) Did you answer %s for %s?" % (NT_ANSWER, nlist))\r\n    response = appendForm1ANames(nlist)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	17
82	Append Form 1B Names to Lists	You have been given a function called <code>appendForm1BNames</code> that takes a list of names called <code>names</code>. \r\n<br/>\r\n<br/>Append "Loveness", "Irene", "Shadrack,", "Donald", and "Severiana" to the <i>names</i> list. Return the new list at the end.	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">appendForm1BNames</field>\r\n    <field name="funcargs">names</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [[], ["Jackline"], ["Miraji"], ["Magdalena", "Miraji"], ["Glory"], ["Sara"]]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor nlist in tests:\r\n    NT_ANSWER = nlist.copy()\r\n    NT_ANSWER.extend(['Loveness', 'Irene', 'Shadrack', 'Donald', 'Severiana'])\r\n    NTPRINT("\\nTEST) Did you answer %s for %s?" % (NT_ANSWER, nlist))\r\n    response = appendForm1BNames(nlist)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	17
83	Make all Names Uppercase	You have been given a function called <code>makeNamesUppercase</code> that takes a list of names called <code>names</code>. \r\n<br/>\r\n<br/>For each name in <i>names</i>, make it uppercase using the <code>.upper()</code> function and append it to a new list. Return this new list at the end.	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">makeNamesUppercase</field>\r\n    <field name="funcargs">names</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [[], ["Severiana", "Irene", "Loveness"], ["Irene", "Irene", "Severiana", "Mary"], ["Donald", "Sara", "Loveness", "Magdalena", "Miraji"], ["Glory", "Severiana", "Irene", "Sara"], ["Sara"]]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor nlist in tests:\r\n    NT_ANSWER = [n.upper() for n in nlist]\r\n    NTPRINT("\\nTEST) Did you answer %s for %s?" % (NT_ANSWER, nlist))\r\n    response = makeNamesUppercase(nlist)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	18
84	Make all Names Lowercase	You have been given a function called <code>makeNamesLowercase</code> that takes a list of names called <code>names</code>. \r\n<br/>\r\n<br/>For each name in <i>names</i>, make it lowercase using the <code>.lower()</code> function and append it to a new list. Return this new list at the end.	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">makeNamesLowercase</field>\r\n    <field name="funcargs">names</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [[], ["Severiana", "Irene", "Loveness"], ["Irene", "Irene", "Severiana", "Mary"], ["Donald", "Sara", "Loveness", "Magdalena", "Miraji"], ["Glory", "Severiana", "Irene", "Sara"], ["Sara"]]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor nlist in tests:\r\n    NT_ANSWER = [n.lower() for n in nlist]\r\n    NTPRINT("\\nTEST) Did you answer %s for %s?" % (NT_ANSWER, nlist))\r\n    response = makeNamesLowercase(nlist)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	18
85	Area of a Triangle	You have been given a function called <code>triangleArea</code> that takes a base <code>base</code> and a height <code>height</code> of a triangle.\r\n<br/>\r\n<br/>\r\nReturn the area of the triangle.	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">triangleArea</field>\r\n    <field name="funcargs">base, height</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(4, 5), (0, 0), (1, 4), (100, 200), (93232, 194939429), (4, 10)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (b, h) in tests:\r\n    NT_ANSWER = 0.5 * b * h\r\n    NTPRINT("\\nTEST) Did you answer %s for (%d, %d)?" % (NT_ANSWER, b, h))\r\n    response = triangleArea(b, h)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	19
86	Area of a Trapezoid	You have been given a function called <code>trapezoidArea</code> that takes a top <code>a</code>, a bottom <code>b</code>, and a height <code>h</code> of a trapezoid.\r\n<br/>\r\n<br/>\r\nReturn the area of the trapezoid. The formula for the area of a trapezoid is:\r\n\r\n$$A = \\frac{(a + b)}{2} \\bullet h$$	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">trapezoidArea</field>\r\n    <field name="funcargs">a, b, h</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(4, 5, 10), (0, 0, 0), (1,3, 4), (100, 150, 200), (93232, 8483394, 194939429), (4, 20, 10)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor (a, b, h) in tests:\r\n    NT_ANSWER = ((a + b) / 2) * h\r\n    NTPRINT("\\nTEST) Did you answer %s for (%d , %d, %d)?" % (NT_ANSWER, a, b, h))\r\n    response = trapezoidArea(a, b, h)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer '%s'. Try again." % response)\r\nverifier_results()	20
