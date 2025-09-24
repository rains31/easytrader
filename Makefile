uv:
	@hash uv || python -m pip install uv
	uv sync

venv: uv
	uv venv

dist:
	uv build

clean:
	rm -rf dist

test:
	pytest -vx --cov=easytrader tests
