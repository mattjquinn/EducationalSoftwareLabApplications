103	Pythagorean Theorem: Solve for b	Complete the <code>pythagoreanTheorem3</code> function so that it correctly solves the Pythagorean Theorem for <code>b</code>. The Pythagorean Theorem is:\r\n\r\n<br/>\r\n<center><p style="font-size: 1.5em">$$ a^2 + b^2 = c^2 $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">pythagoreanTheorem3</field>\r\n    <field name="funcargs">a, c</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(1, 5, 10), (5, 3, 43), (5, 4, 12), (-4, -9, -11), (5, 10, -10), (6, 10, 19), (-12, 4, 23), (10, 9, 18), (3, 10, 19), (-4, -3, -8)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a, _, c in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % math.sqrt(c**2 - a**2)\r\n    NTPRINT("\\nTEST) Did you answer %s for %d, %d?" % (NT_ANSWER, a, c))\r\n    response = pythagoreanTheorem3(a, c)\r\n    if "%.2f" % response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	27
104	Hard Formula #1	Complete the <code>hardFormula1</code> function so that it correctly evaluates this formula:\r\n\r\n<br/>\r\n<center><p style="font-size: 1.5em">$$ \\sqrt{\\frac{24x^2 + 25x - 47}{ax -2}}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">hardFormula1</field>\r\n    <field name="funcargs">a, x</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(1, 5, 10), (5, 3, 43), (5, 4, 12), (-4, -9, -11), (10, 9, 18), (3, 10, 19), (-4, -3, -8)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a, _, x in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % math.sqrt((24*x**2 + 25*x - 47)/(a*x - 2))\r\n    NTPRINT("\\nTEST) Did you answer %s for %d, %d?" % (NT_ANSWER, a, x))\r\n    response = hardFormula1(a, x)\r\n    if "%.2f" % response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	28
105	Hard Formula #2	Complete the <code>hardFormula2</code> function so that it correctly evaluates this formula:\r\n\r\n<br/>\r\n<center><p style="font-size: 1.5em">$$ -8x - 3 - \\frac{53}{ax - 2}  $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">hardFormula2</field>\r\n    <field name="funcargs">a, x</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(1, 5, 10), (5, 3, 43), (5, 4, 12), (-4, -9, -11), (10, 9, 18), (3, 10, 19), (-4, -3, -8)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a, _, x in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % (-8*x -3 - (53/(a*x - 2)))\r\n    NTPRINT("\\nTEST) Did you answer %s for %d, %d?" % (NT_ANSWER, a, x))\r\n    response = hardFormula2(a, x)\r\n    if "%.2f" % response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	29
106	Point Slope Formula: Solve for x1	Complete the <code>pointSlopeFormula</code> function so that it correctly solves the Point-Slope Formula for <code>x1</code>. The Point-Slope Formula is:\r\n\r\n<br/>\r\n<center><p style="font-size: 1.5em">$$ y- y_1 = m(x - x_1) $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">pointSlopeFormula</field>\r\n    <field name="funcargs">y, y1, m, x</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(1, 5, 10, 4), (5, 3, 43, 34), (5, 4, 12, -1), (-4, -9, -11, -45), (10, 9, 18, 23), (3, 10, 19, 10), (-4, -3, -8, -44)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor y, y1, x, m in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % ((y - y1 - m*x) / (-m))\r\n    NTPRINT("\\nTEST) Did you answer %s for %d, %d, %d, %d?" % (NT_ANSWER, y, y1, m, x))\r\n    response = pointSlopeFormula(y, y1, m, x)\r\n    if "%.2f" % response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	30
101	Pythagorean Theorem: Solve for c	Complete the <code>pythagoreanTheorem1</code> function so that it correctly solves the Pythagorean Theorem for <code>c</code>. The Pythagorean Theorem is:\r\n\r\n<br/>\r\n<center><p style="font-size: 1.5em">$$ a^2 + b^2 = c^2 $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">pythagoreanTheorem1</field>\r\n    <field name="funcargs">a, b</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(1, 5, 1), (5, 43, 3), (5, 8, 2), (-4, -9, -1), (20, 30, -10), (24, 60, 19), (-12, 100, 23), (10, 75, 10), (30, 56, 10), (-12, -34, -12)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor a, b, _ in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % math.sqrt(a**2 + b**2)\r\n    NTPRINT("\\nTEST) Did you answer %s for %d, %d?" % (NT_ANSWER, a, b))\r\n    response = pythagoreanTheorem1(a, b)\r\n    if "%.2f" % response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	27
102	Pythagorean Theorem: Solve for a	Complete the <code>pythagoreanTheorem2</code> function so that it correctly solves the Pythagorean Theorem for <code>a</code>. The Pythagorean Theorem is:\r\n\r\n<br/>\r\n<center><p style="font-size: 1.5em">$$ a^2 + b^2 = c^2 $$</p></center>	<block type="def" id="Eqq[fvJW_jmnVA05w`uc" x="89" y="46">\r\n    <field name="funcname">pythagoreanTheorem2</field>\r\n    <field name="funcargs">b, c</field>\r\n    </statement>\r\n  </block>	NTPRINT("\\n=== Testing your program... =============================")\r\ntests_passed = 0\r\ntests = [(1, 5, 10), (5, 3, 43), (5, 4, 12), (-4, -9, -11), (20, 10, -10), (24, 10, 19), (-12, 4, 23), (10, 9, 18), (30, 10, 19), (-12, -3, -8)]\r\ndef verifier_results():\r\n    if tests_passed == len(tests):\r\n      NTPRINT("ALL TESTS PASSED.")\r\n    NTPRINT('NT_VERIFIER_RESULTS:%d:%d' % (tests_passed, len(tests)))\r\n    import sys\r\n    sys.exit(0)\r\nfor _, b, c in tests:\r\n    import math\r\n    NT_ANSWER = "%.2f" % math.sqrt(c**2 - b**2)\r\n    NTPRINT("\\nTEST) Did you answer %s for %d, %d?" % (NT_ANSWER, b, c))\r\n    response = pythagoreanTheorem2(b, c)\r\n    if "%.2f" % response == NT_ANSWER:\r\n        NTPRINT("\\t-> CORRECT")\r\n        tests_passed += 1\r\n    else:\r\n        NTPRINT("\\t-> INCORRECT. You answer %s. Try again." % response)\r\nverifier_results()	27