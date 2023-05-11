how to get all derivations that make up a thing:

 nix show-derivation result/ -r | jq 'keys'
