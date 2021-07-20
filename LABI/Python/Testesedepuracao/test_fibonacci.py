import pytest
from fibonacci import fibonacci

def test_inferior_1():
    print("Testa comportamentos com n < 1")
    assert fibonacci(0) == [0]
    assert fibonacci(-1) == []
    assert fibonacci(n) == len(res)

def test_0():
    print("Testa n = 2")
    assert fibonacci(0) == [0]

def test_1():
    print("Testa n=1")
    assert fibonacci(1) == [0, 1]

def test_2():
    print("Testa n = 2")
    assert fibonacci(2) == [0, 1, 1]

def test_5():
    print("Testa n = 5")
    assert fibonacci(5) == [0, 1, 1, 2, 3, 5]

