build:
	  mvn clean verify site

lint:prepare
	  ktlint

format:prepare
	  ktlint --format \
  	mvn spotless:apply \
    # https://docs.openrewrite.org/recipes/maven/bestpractices
	  mvn -U org.openrewrite.maven:rewrite-maven-plugin:run \
				-Drewrite.activeRecipes=org.openrewrite.maven.BestPractices \
				-Drewrite.exportDatatables=true

prepare:
	  brew install ktlint --quiet

all: format lint build
