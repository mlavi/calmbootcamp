## Execute

alias calmbootcamp='ghq-cd calmbootcamp && git fetch --verbose upstream && git merge upstream/master && pipenv shell'

- Setup:

      # forked upstream https://github.com/jncox/calmbootcamp
      ghq clone mlavi/calmbootcamp && gcd calmbootcamp
      pipenv --three install watchdog sphinx \
        sphinxcontrib-fulltoc sphinx-bootstrap-theme sphinx_fontawesome

      git submodule add git@github.com:pfalcon/sphinx_selective_exclude.git \
        modules/sphinx_selective_exclude && cd $\_/ && python setup.py install

      git remote add upstream git@github.com:jncox/calmbootcamp.git &&
        git remote --verbose show

- Author:
    ```
    gcd calmbootcamp && pipenv shell

    watchmedo shell-command --wait --recursive --ignore-patterns='_build' \
      --patterns='*rst' --command='modules/build.sh ${watch_src_path}' &

    sphinx-build . _build && firefox $_/index.html || brave-browser $_/index.html

    ```
  - Notes:
    If you see the following, you did not add a blank line after `::only` [tag]
    Exception occurred:
    ValueError: chunk after expression
  - [_build/index.html](./_build/index.html)

# Next steps:
- git fetch --verbose upstream && git merge upstream/master
- Feedback loop via LiveReload
  - http://livereload.com/browser/script-tag/
  - bundle &&

# Research
- git checkout master && git merge [topic_branch]
- git checkout -b jncox-master master &&
  git pull git://github.com/jncox/calmbootcamp.git master
  git checkout master && git merge --no-ff jncox-master
  git push origin master
- ChrisR include/conditional
https://github.com/nutanixdev/dev-setup-lab-devmktg/blob/master/contents/master_linux.rst
That file shows includes for RST (they're in the includes/ folder)
https://sublime-and-sphinx-guide.readthedocs.io/en/latest/conditions.html
-t audience, apparently
- .Rmd to PPT

# Hands On Workshops: How To

- Suggestions from [How to contribute to Nutanix Workshops](https://nutanix.handsonworkshops.com/workshops/32805e93-e67f-46b4-9700-a7eb78db4c21/view/)
  - git clone https://github.com/nutanixworkshops/workshop-repo-template
    - recommend using this [.gitignore](https://s3.amazonaws.com/handsonworkshops.prod.media/ws/32805e93e67f46b49700a7eb78db4c21/d/file/dd1e954b38474309acca60229d80acb6/.gitignore)
- [Bootcamp Authoring and Publishing Guide](https://drive.google.com/file/d/1-mI4-oCEjNgSmq8hagQHKfY6P1Ja9e0k/view)
  - https://github.com/shuguet/how Docker container build/live webserver

# RST

- https://docutils.sourceforge.io/docs/user/rst/quickref.html and more from the source.
- http://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html
  - [Roles](http://www.sphinx-doc.org/en/master/usage/restructuredtext/roles.html)
  - [Directives](http://www.sphinx-doc.org/en/master/usage/restructuredtext/directives.html)

## Atom Plugins

- git-log
- tree-view-git-branch
- tree-view-git-status
- language-sphinx
- RESEARCH:
  - [Sphinx-Preview](https://github.com/dldl/sphinx-preview)
    - because markdown-preview-enhanced doesn't handle RST
    - Requires docker and apm install browser-plus
      - https://hub.docker.com/r/dldl/sphinx-server/tags
      - https://github.com/dldl/sphinx-server
        - docker exec -it sphinx-preview-57b300260204 /bin/sh
        - /web # make html
    - ghq-clone git@github.com:dldl/sphinx-server.git
      - https://github.com/dldl/sphinx-server/blob/master/Dockerfile
        - FROM python:3.8.0-alpine3.10
        - docker run -it -v "$(pwd)":/web -u $(id -u):$(id -g) \
        --user=root --name=mark-sphinx python:3.8.0-alpine3.10 /bin/sh
        - docker stop mark-sphinx && docker rm -v mark-sphinx
        - docker ps
        - docker pull alpine:3.10
- git-plus: uninstalled

## OS Packages

- http://www.sphinx-doc.org/en/master/usage/installation.html
  - `brew` for the win with pipenv
    - See [dotfiles/dmz/python.md#Linux]
  - `apt-get install python3-sphinx`
    - `sphinx-build --help` = Sphinx v1.6.7

        Suggested packages:
          docutils-doc fonts-linuxlibertine | ttf-linux-libertine texlive-lang-french texlive-latex-base
          texlive-latex-recommended python-jinja2-doc ttf-bitstream-vera python3-sphinx-rtd-theme dvipng
          texlive-latex-extra texlive-fonts-recommended texlive-generic-extra latexmk sphinx-doc

        update-alternatives: using /usr/share/docutils/scripts/python3/rst-buildhtml to provide /usr/bin/rst-buildhtml (rst-buildhtml) in auto mode
- https://www.sphinx-doc.org/en/master/usage/configuration.html
- https://docs.python-guide.org/dev/virtualenvs/

## Appendix

- cd calm_marketplace/images; for i in `ls 510*png`; do `git mv $i 5.10/${i:3}` ; done
- pipenv install --dev watchdog
  - https://github.com/gorakhargosh/watchdog
  - `watchmedo shell-command --help`
- FIXED: Linuxbrew Python-3.8 upgrade has broken pipenv 2020.5.28:
  - https://github.com/pypa/pipenv/issues/4204
  - https://github.com/Homebrew/linuxbrew-core/issues/20474
  - Fall back to:
    - https://pipenv.pypa.io/en/latest/install/#pragmatic-installation-of-pipenv
    - pip3 install --user pipenv
    - PATH=$(python -m site --user-base)/bin:${PATH}

# Content Warnings
