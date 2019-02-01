# ZCOBOL Image
# Author: Daniel Nicolas Gisolfi

account=dgisolfi # Docker account
image=zcobol
container=zCobol

clean:
	-docker kill $(container)
	-docker rm $(container)
	-docker rmi $(image)

build_image:
	@docker build -t $(image) .

publish_image:
	@echo "\n Publishing the zCobol image to Docker Hub \n"
	@docker tag $(image) $(account)/$(image):latest
	@docker push $(account)/$(image)

run_image:
	@docker run -it --name $(container) $(image) bash

# Used to run the image and volume mount 
# the src directory of this repo
run_image_dev: build_image
	@docker run -it --name $(container) -v${PWD}/src:/src $(image) bash