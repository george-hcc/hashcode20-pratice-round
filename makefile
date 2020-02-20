all: ex1 ex2 ex3 ex4 ex5

ex1:
	@echo "Solving the 'a_example' dataset..."
	@cat datasets/a_example.in | python3 codes/pizza.py > outputs/a_example.out
	@echo "Done!"

ex2:
	@echo "Solving the 'b_small' dataset..."
	@cat datasets/b_small.in | python3 codes/pizza.py > outputs/b_small.out
	@echo "Done!"

ex3:
	@echo "Solving the 'c_medium' dataset..."
	@cat datasets/c_medium.in | python3 codes/pizza.py > outputs/c_medium.out
	@echo "Done!"
ex4:
	@echo "Solving the 'd_quite_big' dataset..."
	@cat datasets/d_quite_big.in | python3 codes/pizza.py > outputs/d_quite_big.out
	@echo "Done!"

ex5:
	@echo "Solving the 'e_also_big' dataset..."
	@cat datasets/e_also_big.in | python3 codes/pizza.py > outputs/e_also_big.out
	@echo "Done!"
