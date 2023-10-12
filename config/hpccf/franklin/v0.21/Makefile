
software/packages.yaml: software/packages.in.yaml core/packages.yaml
	@yq eval-all '. as $$item ireduce ({}; . * $$item)' $^ > $@

all: software/packages.yaml

clean:
	@rm -f software/packages.yaml
