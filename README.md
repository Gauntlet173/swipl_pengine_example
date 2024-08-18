# Pengines Issue with s(CASP)

On a machine with swipl and scasp installed, run `swipl -s server.pl -g "server(8080)"`

Start a new terminal on the same machine, and run `swipl -s test.pl -g "test(3)"`

Changing the goal to "test(1)" will return "jason", changing the goal to "test(2)" will
return "Worked". If it was working properly, test(3) should also return "jason".