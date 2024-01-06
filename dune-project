(lang dune 3.12)

(name first)

(generate_opam_files true)

(source
 (github qiuzhanghua/first))

(authors "邱张华")

(maintainers "qiuzhanghua")

(license MIT)

(documentation github.com/qiuzhanghua/first/blob/master/README.md)

(package
 (name first)
 (synopsis "learn ocaml")
 (description "learn ocaml step by step")
 (depends ocaml dune owl)
 (tags
  (topics "ocaml" "learn")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
