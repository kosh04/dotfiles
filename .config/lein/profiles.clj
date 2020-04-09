;;; .lein/profiles.clj

;; bash: export LEIN_HOME="$HOME/.config/lein"

;; see also
;; - https://github.com/technomancy/leiningen/blob/master/doc/PROFILES.md
;; - https://github.com/technomancy/leiningen/blob/master/sample.project.clj
;; - https://github.com/clojure-emacs/cider#setting-up-ciders-nrepl-middleware

{:repl
 {:plugins [[cider/cider-nrepl "0.9.1"]
            [lein-pprint "1.1.1"]
            [lein-auto "0.1.2"]
            [lein-kibit "0.1.2"]
            [refactor-nrepl "1.1.0"]]
  :dependencies [[org.clojure/tools.nrepl "0.2.12"]
                 [org.clojure/tools.cli "0.3.3"]
                 [org.clojure/math.combinatorics "0.1.1"]
                 [slamhound "1.3.1"]]}}
