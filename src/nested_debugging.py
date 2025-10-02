class A:
    def __init__(self):
        self.a = "val_a"

    def method_1(self):
        print("In method 1")

class B:
    def __init__(self):
        self.instance_of_A = A()

call = B().instance_of_A.method_1()
