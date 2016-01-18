all: test

test: test_11692

test_11692: test_11692_1 test_11692_2

test_11692_1:
	ansible-playbook -i localhost, -c local test_11692.yml --start-at-task="run-second-task"

test_11692_2:
	ansible-playbook -i localhost, -c local test_11692.yml --start-at-task="test_11692 : run-second-task"
