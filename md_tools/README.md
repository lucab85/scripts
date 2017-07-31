# Markdown tools for search and replace

Collections of tools used to contribute to
[WebFundamentals](https://github.com/google/WebFundamentals) repository.


Usage:

 1. Find [style callouts](https://developers.google.com/web/resources/style-guide#callouts)
    in translations

        ./find_and_replace_callouts.sh


 1. Find [inline code](https://developers.google.com/web/resources/style-guide#inline_code)
    in translations

        ./find_and_replace_code.sh


 1. Update 'wf_updated_on' field (format: `{# wf_updated_on: 2017-07-31 #}`)

        ./replace_date.sh


 1. Spellcheck (default language: English) filelist or directory

        ./do_spellcheck.sh

Setup:

        apt-get install aspell aspell-it aspell-en
