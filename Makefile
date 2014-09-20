build:
	docker build -t krasnobaev/irdatasets .

run:
	docker run -d -v /usr/data --name irds -t krasnobaev/irdatasets \
		echo DataSets for IR experiments

