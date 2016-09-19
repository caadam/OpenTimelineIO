# run all the unit tests
test:
	python2.7 -m unittest discover tests

# run all the unit tests, stopping at the first failure
test_first_fail:
	python2.7 -m unittest discover tests --failfast

# skip the timecode test that takes forever
fast_test:
	env OTIO_FAST_TEST=1 python2.7 -m unittest discover tests

# remove pyc files
clean:
	rm */*.pyc */*/*.pyc

# conform all files to pep8 -- WILL CHANGE FILES IN PLACE
autopep8:
	find . -name "*.py" | xargs autopep8 --aggressive --in-place -r

# run the codebase through pep8
pep8:
	@find . -name "*.py" | xargs pep8