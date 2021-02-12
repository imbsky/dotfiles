function opampinall
  for pkg in (opam pin scan . | sed 1d | awk '{ print $1 }');
    opam pin add $pkg.dev . --no-action --yes;
  end
end
