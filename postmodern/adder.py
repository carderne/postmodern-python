def add_two[T: (int, float)](num: T) -> T:
    """
    Adds two to the given `num`

    >>> res = add_two(0.5)
    >>> assert res == 2.5

    >>> res = add_two(1)
    >>> assert res == 4    # note this is wrong!
    """
    return num + 2
