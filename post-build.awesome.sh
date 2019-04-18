#!/bin/bash

mkdir -p public/img public/font public/css

cp docs/src/img/** public/img
cp docs/src/font/** public/font

cat <<-EOF > public/index.html
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="A curated list of awesome Gulp resources, plugins and boilerplates for a better development workflow automation">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Awesome gulp - A curated list of awesome Gulp resources, plugins and boilerplates for a better development workflow automation</title>
  <link rel="stylesheet" href="css/custom.css">
</head>

<body>

  <div class="mdl-layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-100">
    <header class="mdl-header mdl-layout__header mdl-layout__header--scroll mdl-color--grey-100 mdl-color-text--grey-800">
      <div class="mdl-layout__header-row">
          <span class="mdl-layout-logo">
            <a href="">
              <img src="img/awesome.svg" alt="Awesome">
            </a>
          </span>
          <span class="mdl-layout-title">
            <a href="">
              Awesome Gulp
            </a>
          </span>

        <div class="mdl-layout-spacer"></div>

        <a href="https://github.com/alferov/awesome-gulp">
          <i class="icon icon-github-circled icon-large"> </i>
        </a>

      </div>
    </header>

    <div class="mdl-ribbon"></div>
      <main class="mdl-main mdl-layout__content">
        <div class="mdl-container mdl-grid">
          <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
          <div class="mdl-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
            <!-- inject:html -->
            $(cat docs/src/index.html)
            <!-- endinject -->
          </div>
        </div>
        <footer class="mdl-footer mdl-mini-footer">
          <div class="mdl-mini-footer--left-section">
            <ul class="mdl-mini-footer--link-list">
              <li><a href="https://github.com/alferov/awesome-gulp">Github</a></li>
              <li><a href="https://gulp.zeef.com">Zeef</a></li>
            </ul>
          </div>
        </footer>
      </main>
  </div>
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-67870109-1', 'auto');
    ga('send', 'pageview');
  </script>
</body>
</html>
EOF
