# Docker Juma Editor and Juma API (LOSD Version) Single Port

## Description

This is a docker image and files of the Juma Editor tool and Juma API that has been specialised for use in the LOSD publication platform.

## MySQL database Password

Edit the 'Dockerfile' and change **ROOT_PASSWORD** to your desired passsword.

Edit the '../Juma-losd-docker_sp/juma-uplift-master/src/main/resources/hibernate.cfg.xml' file and change **ROOT_PASSWORD** to your desired passsword (matching that in the DockerFile).

If you wish to add users for Juma at this stage, edit the '../Juma-losd-docker_sp/juma-uplift-master/src/main/resources/shiro-users.properties' file. Each user must be on a separate line and the syntax to declare a new use is as follows: "user.name = password". So for a user "foo" with password "bar" it would be specified as: "user.foo = bar".
You can always enter the container at a later stage, edit the above file and add new users if desired.

## Usage

Build Image: ``docker image build -t juma_image .``

Run Container: ``docker run --name juma_container -p 8889:8889 -t juma_image``

- Juma Editor available on ``http://**IP|domain**:8889/juma-editor/login``

- Juma Api on ``http://**IP|domain**:8889/juma-api``

Enter the container: ``docker exec -it juma_container bash``

## License
This software is released under the [MIT license](http://opensource.org/licenses/MIT).

-----

## More information

Code based on the work developed by [Ademar Crotti Junior](https://www.scss.tcd.ie/~crottija/juma/).

To reference Juma please use the following:

A. Crotti Junior, C. Debruyne and D. O'Sullivan, "Juma Uplift: Using a Block Metaphor for Representing Uplift Mappings," 2018 IEEE 12th International Conference on Semantic Computing (ICSC), Laguna Hills, CA, 2018, pp. 211-218. Doi: 10.1109/ICSC.2018.00037.
