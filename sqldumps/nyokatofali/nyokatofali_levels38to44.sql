121	Sum of Range of Tangents	Complete the <code>sumTangents</code> function so that it correctly evaluates this sum:\r\n\r\n<center><p style="font-size: 1.8em">$$ \\log_{10}{n} + \\sum_{3}^{n}{\\left( \\tan{\\frac{5 \\theta}{11}} + \\tan^2{\\sqrt{\\theta}} \\right)}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">sumTangents</field>\r\n    <field name="funcargs">n</field>\r\n    </statement>\r\n  </block>	import math\r\nNTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % (math.log10(n) + sum(math.tan(5*theta / 11) + math.tan(math.sqrt(theta))**2 for theta in range(3, n)))\r\n    NTPRINT("\\nTEST) Did you answer %s for %d?" % (NT_ANSWER, n))\r\n    response = "%.2f" % sumTangents(n)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	44
116	Tangent Squared	Complete the <code>tanSquared</code> function so that it correctly evaluates this formula for the tangent squared of an angle <code>theta</code>: \r\n\r\n<center><p style="font-size: 1.5em">$$ \\frac{1 - \\cos{2\\theta}}{1 + \\cos{2\\theta}}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">tanSquared</field>\r\n    <field name="funcargs">theta</field>\r\n    </statement>\r\n  </block>	import math\r\nNTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [math.pi/6, math.pi/4, 7*math.pi/6, 5*math.pi/4, 11*math.pi/6, math.pi*(5/3)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % ((1 - math.cos(2*a)) / (1 + math.cos(2*a)))\r\n    NTPRINT("\\nTEST) Did you answer %s for %.2f?" % (NT_ANSWER, a))\r\n    response = "%.2f" % tanSquared(a)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	39
117	Half Angle Tangent	Complete the <code>halfAngleTangent</code> function so that it correctly evaluates this formula for half angle tangent of an angle <code>theta</code>: \r\n\r\n<center><p style="font-size: 1.5em">$$ \\sqrt{\\frac{1 - \\cos{\\theta}}{1 + \\cos{\\theta}}}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">halfAngleTangent</field>\r\n    <field name="funcargs">theta</field>\r\n    </statement>\r\n  </block>	import math\r\nNTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [math.pi/6, math.pi/4, 7*math.pi/6, 5*math.pi/4, 11*math.pi/6, math.pi*(5/3)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % math.sqrt((1 - math.cos(a)) / (1 + math.cos(a)))\r\n    NTPRINT("\\nTEST) Did you answer %s for %.2f?" % (NT_ANSWER, a))\r\n    response = "%.2f" % halfAngleTangent(a)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	40
119	Sum of Range of Cosines	Complete the <code>sumCosines</code> function so that it correctly evaluates this sum:\r\n\r\n<center><p style="font-size: 1.8em">$$ \\sum_{0}^{n}{\\cos{\\theta}}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">sumCosines</field>\r\n    <field name="funcargs">n</field>\r\n    </statement>\r\n  </block>	import math\r\nNTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % sum(math.cos(theta) for theta in range(0, n))\r\n    NTPRINT("\\nTEST) Did you answer %s for %d?" % (NT_ANSWER, n))\r\n    response = "%.2f" % sumCosines(n)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	42
120	Sum of Range of Sines	Complete the <code>sumSines</code> function so that it correctly evaluates this sum:\r\n\r\n<center><p style="font-size: 1.8em">$$ \\sum_{4}^{n}{\\sin{\\frac{\\theta \\pi}{6}}}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">sumSines</field>\r\n    <field name="funcargs">n</field>\r\n    </statement>\r\n  </block>	import math\r\nNTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor n in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % sum(math.sin((theta * math.pi) / 6) for theta in range(4, n))\r\n    NTPRINT("\\nTEST) Did you answer %s for %d?" % (NT_ANSWER, n))\r\n    response = "%.2f" % sumSines(n)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	43
115	Side-angle-side Formula	Complete the <code>sideAngleSide</code> function so that it correctly evaluates this formula for the area of a triangle with sides <code>a</code> and <code>b</code> and angle <code>C</code>:\r\n\r\n<center><p style="font-size: 1.5em">$$ \\frac{1}{2} a b \\sin(C)  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">sideAngleSide</field>\r\n    <field name="funcargs">a, b, C</field>\r\n    </statement>\r\n  </block>	import math\r\nNTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(10, 10, 0), (3, 3, math.pi / 2), (9, 10, math.pi / 2), (5, 3, math.pi * (3/2))]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a, b, C in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % (0.5 * a * b * math.sin(C))\r\n    NTPRINT("\\nTEST) Did you answer %s for %d, %d, %.2f?" % (NT_ANSWER, a, b, C))\r\n    response = "%.2f" % sideAngleSide(a, b, C)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	38
118	Double Angle Formula	Complete the <code>doubleAngleTangent</code> function so that it correctly evaluates this formula for the double of an angle <code>theta</code>: \r\n\r\n<center><p style="font-size: 1.5em">$$ \\frac{2 \\tan{\\theta}}{1 - \\tan^2{\\theta}}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">doubleAngleTangent</field>\r\n    <field name="funcargs">theta</field>\r\n    </statement>\r\n  </block>	import math\r\nNTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [math.pi/6, math.pi/4, 7*math.pi/6, 5*math.pi/4, 11*math.pi/6, math.pi*(5/3)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % ((2 * math.tan(a)) / (1 - math.tan(a)**2))\r\n    NTPRINT("\\nTEST) Did you answer %s for %.2f?" % (NT_ANSWER, a))\r\n    response = "%.2f" % doubleAngleTangent(a)\r\n    if response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	41