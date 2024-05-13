all: main/packages.yaml

main/packages.yaml: main/packages.in.yaml core/packages.yaml
	@yq eval-all '. as $$item ireduce ({}; . * $$item)' $^ > $@

clean:
	@rm -f main/packages.yaml
