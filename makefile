all: ex1 ex2 ex3 ex4 ex5

ex1:
	@echo "Solving the 'a_example' dataset..."
	codes/pizza.py < datasets/a_example.in > outputs/a_example.out
	@echo "Done!"

ex2:
	@echo "Solving the 'b_small' dataset..."
	codes/pizza.py < datasets/b_small.in > outputs/b_small.out
	@echo "Done!"

ex3:
	@echo "Solving the 'c_medium' dataset..."
	codes/pizza.py < datasets/c_medium.in > outputs/c_medium.out
	@echo "Done!"
ex4:
	@echo "Solving the 'd_quite_big' dataset..."
	codes/pizza.py < datasets/d_quite_big.in > outputs/d_quite_big.out
	@echo "Done!"

ex5:
	@echo "Solving the 'e_also_big' dataset..."
	codes/pizza.py < datasets/e_also_big.in > outputs/e_also_big.out
	@echo "Done!"
