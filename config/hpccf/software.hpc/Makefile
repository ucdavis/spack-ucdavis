
main/packages.yaml: main/packages.in.yaml core/packages.yaml
	@yq eval-all '. as $$item ireduce ({}; . * $$item)' $^ > $@

all: main/packages.yaml

clean:
	@rm -f main/packages.yaml
