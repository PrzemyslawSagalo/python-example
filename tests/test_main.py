import pytest
from utils.base_utils import util_f1

from python_example_package.main import first_function


def test_1():
    v_first_function = first_function(1)
    util_f1(9)
    assert True


def test_2():
    v_first_function = first_function(1)
    assert True
