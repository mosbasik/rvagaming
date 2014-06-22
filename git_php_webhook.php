<!DOCTYPE html>
<html class="  ">
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title>A basic webhook for deploying updates to repos on Github to your local server</title>

  <meta content="authenticity_token" name="csrf-param" />
<meta content="AFi6E7youAUI0ZfsBlUXu0wjYc5qTpfiM3kCLvcuEtpxgLGno8LOWHV6Knw+UvV4V63Tbj6gsP/hlJaXNC/Snw==" name="csrf-token" />
  <meta name="viewport" content="width=960">


    <link type="text/plain" rel="author" href="https://github.com/humans.txt" />
    <meta content="gist" name="octolytics-app-id" /><meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="AC05E80E:6287:102B5853:53A672F8" name="octolytics-dimension-request_id" /><meta content="5025277" name="octolytics-actor-id" /><meta content="mosbasik" name="octolytics-actor-login" /><meta content="e896ed64b2d6f70f7a979f5f2506d4031df0ec818b248ad79734c295b9edc84e" name="octolytics-actor-hash" />
  <link rel="assets" href="https://gist-assets.github.com/">
  

  <link href="https://gist-assets.github.com/assets/application-8ce67cef3881646deb27d89a26ace71e.css" media="screen, print" rel="stylesheet" />
  <script src="https://gist-assets.github.com/assets/application-eac60605e40d8313c2d6fa68bbee0a1f.js"></script>

      <meta name="twitter:card" content="summary">
  <meta name="twitter:site" content="@github">
  <meta property="og:title" content="marcelosomers/git-php-webhook.php">
  <meta property="og:type" content="githubog:gist">
  <meta property="og:url" content="https://gist.github.com/marcelosomers/8305065">
  <meta property="og:image" content="https://avatars3.githubusercontent.com/u/444616?s=140">
  <meta property="og:site_name" content="GitHub Gists">
  <meta property="og:description" content="A basic webhook for deploying updates to repos on Github to your local server - Gist is a simple way to share snippets of text and code with others.">
  <meta name="description" content="A basic webhook for deploying updates to repos on Github to your local server - Gist is a simple way to share snippets of text and code with others.">


</head>

<body class="logged_in "
  data-plan="">

  <div id="wrapper">
    

    <div id="header" class="header header-logged-in">
      <div class="container clearfix">
        <a class="header-logo-wordmark" href="https://gist.github.com/">
          <span class="octicon octicon-logo-github"></span>
          <span class="octicon-logo octicon-logo-gist"></span>
        </a>

        <div class="divider-vertical"></div>
        <div class="topsearch">
  <form id="top_search_form" action="/search" data-pjax-remote=push accept-charset="UTF-8">
    <div class="search">
      <input type="text" class="search js-search js-navigation-enable js-quick-search" name="q" placeholder="Search&#x2026;" data-hotkey="/" autocomplete=off autocorrect=off value="" >

      <div class="search-results js-search-results js-navigation-container"></div>
    </div>
    <div class="divider-vertical"></div>
  </form>
  <ul class="top-nav">
    <li class="explore"><a href="/discover">All Gists</a></li>
  </ul>
</div>

        <ul id="user-links">
  <li>
  <a href="/mosbasik" class="name">
    <img src="https://avatars1.githubusercontent.com/u/5025277?s=140" width="20" height="20"> mosbasik
  </a>
  </li>
  <li>
  <a href="/" id="new_gist" class="tooltipped tooltipped-s" aria-label="New Gist">
    <span class="octicon octicon-gist-new"></span>
  </a>
  </li>
  <li>
  <a href="https://github.com" class="tooltipped tooltipped-s" aria-label="Go to GitHub" data-skip-pjax>
    <span class="octicon octicon-octoface"></span>
  </a>
  </li>
  <li>
  <form action="/logout" method="post">
    <input name="authenticity_token" type="hidden" value="S2FXw8qqt26XlJcT3hTXXqf/F8UJ0t7MotDOXbBjIk86uVx31cDBM+o/KoPmEzWdvHGlZV08+dFwPVrkc2LiCg==" />
    <button class="logout-button tooltipped tooltipped-s" id="logout" type="submit" aria-label="Sign out">
      <span class="octicon octicon-log-out"></span>
    </button>
  </form>
  </li>
</ul>

      </div>
    </div>

    <div class="site-content" id="js-pjax-container" data-pjax-container>
      <div id="js-flash-container" class="site-container js-site-container" data-url="/marcelosomers/8305065">
  
  

<meta content="true" name="octolytics-dimension-public" /><meta content="8305065" name="octolytics-dimension-gist_id" /><meta content="8305065" name="octolytics-dimension-gist_name" /><meta content="false" name="octolytics-dimension-anonymous" /><meta content="444616" name="octolytics-dimension-owner_id" /><meta content="marcelosomers" name="octolytics-dimension-owner_login" /><meta content="false" name="octolytics-dimension-forked" />

<div class="pagehead repohead">
  <div class="container">
    <div class="title-actions-bar">
      <ul class="pagehead-actions">
            <li>
              <div class="gist-advanced-options select-menu js-menu-container js-select-menu">

                <span class="minibutton select-menu-button js-menu-target">
                  <span class="octicon octicon-gear"></span>
                </span>

                <div class="select-menu-modal-holder js-menu-content js-navigation-container js-select-menu-pane">
                  <div class="select-menu-modal">
                    <div class="select-menu-header">
                      <span class="select-menu-title">Advanced options</span>
                      <span class="octicon octicon-x js-menu-close"></span>
                    </div> <!-- /.select-menu-header -->

                    <div class="select-menu-list">

                      <div class="select-menu-item js-navigation-item">
                        <div class="select-menu-item-text js-navigation-open">
                          <a href="/marcelosomers/8305065/report" data-method="post" data-skip-pjax>Report as abuse</a>
                        </div>
                      </div> <!-- /.select-menu-item -->

                    </div> <!-- /.select-menu-list -->

                  </div> <!-- /.select-menu-modal -->
                </div> <!-- /.select-menu-modal-holder -->
              </div> <!-- /.select-menu -->
            </li>
          <li>
              <form action="/marcelosomers/8305065/star" data-pjax-remote=replace method="post" accept-charset="UTF-8">
                <input name="authenticity_token" type="hidden" value="PFXKS3v2BwxL4E8SJ3pVeFcoMbNvItaMfc4HmIGrsaRNjcH/ZJxxUTZL8oIffbe7TKaDEzvM8ZGvI5MhQqpx4Q==" />
                <button class="minibutton with-count" type="submit"><span class="octicon octicon-star"></span>Star</button>
                  <a class="social-count js-social-count" href="/marcelosomers/8305065/stars">3</a>
              </form>
          </li>
          <li>
            <form action="/marcelosomers/8305065/fork" data-method="post" method="post" accept-charset="UTF-8">
              <button class="minibutton with-count fork-button" type="submit"><span class="octicon octicon-repo-forked"></span>Fork</button>
              <span class="social-count">0</span>
            </form>
          </li>


      </ul>
      <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public" >
  <span class="repo-label"><span class="" >public</span></span>
  <span class="mega-octicon octicon-gist" ></span>
  <div class="meta">
    <div class="gist-author">
      <img src="https://avatars3.githubusercontent.com/u/444616?s=140" width="26" height="26">
        <span class="author vcard">
            <span itemprop="title"><a href="/marcelosomers">marcelosomers</a></span>
        </span> /
      <strong><a href="/marcelosomers/8305065" class="js-current-repository">git-php-webhook.php</a></strong>
    </div>
    <div class="gist-timestamp">
        <span class="datetime">Last active <time class="js-relative-date" title="2014-01-08T16:49:02Z" datetime="2014-01-08T16:49:02Z">2014-01-08</time></span>
    </div>
</h1>

    </div>

  </div>
</div>


<div class="container">
  <div class="gist js-gist-container gist-with-sidebar with-full-navigation"
    data-version="18ef4c7459e64fe3d8e71eeaa40dc6c09412a036"
    data-created="false"
    data-updated="false">

      <div class="gist-sidebar clearfix">
  <div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders">
    <div class="sunken-menu-contents">
      <ul class="sunken-menu-group">
        <li class="tooltipped tooltipped-w" aria-label="Code">
          <a aria-label="Code" class="sunken-menu-item selected" data-pjax="true" href="/marcelosomers/8305065">
            <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
            <img alt="" class="mini-loader" height="16" src="https://gist-assets.github.com/assets/spinners/octocat-spinner-32-4ae22f00973f33151cb92eea73616c5c.gif" width="16" />
</a>        </li>

          <li class="tooltipped tooltipped-w" aria-label="Revisions">
            <a aria-label="Revisions" class="sunken-menu-item" data-pjax="true" href="/marcelosomers/8305065/revisions">
              <span class="octicon octicon-git-commit"></span> <span class="full-word">Revisions</span>
              <img alt="" class="mini-loader" height="16" src="https://gist-assets.github.com/assets/spinners/octocat-spinner-32-4ae22f00973f33151cb92eea73616c5c.gif" width="16" />
              <span class='counter'>6</span>
</a>          </li>

          <li class="tooltipped tooltipped-w" aria-label="Stars">
            <a aria-label="Stars" class="sunken-menu-item" data-pjax="true" href="/marcelosomers/8305065/stars">
              <span class="octicon octicon-star"></span> <span class="full-word">Stars</span>
              <img alt="" class="mini-loader" height="16" src="https://gist-assets.github.com/assets/spinners/octocat-spinner-32-4ae22f00973f33151cb92eea73616c5c.gif" width="16" />
              <span class='counter'>3</span>
</a>          </li>

      </ul>
    </div><!-- /.sunken-menu-group -->
  </div><!-- /.sunken-menu-contents -->

  <div class="only-with-full-nav">

    <div class="embed-url open" style="display: block;">
      <h3><strong>Embed</strong> URL</h3>
      <div class="clone-url-box">
        <input type="text" class="clone js-url-field" value="&lt;script src=&quot;https://gist.github.com/marcelosomers/8305065.js&quot;&gt;&lt;/script&gt;" readonly="readonly">
        <span class="url-box-clippy">
          <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="&lt;script src=&quot;https://gist.github.com/marcelosomers/8305065.js&quot;&gt;&lt;/script&gt;" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
        </span>
      </div>
    </div>
    <p class="clone-options"></p>

      
<div class="clone-url open" data-protocol-type="http" data-url="https://gist.github.com/8305065.git">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone url-field js-url-field" value="https://gist.github.com/8305065.git" readonly="readonly">
    <span class="url-box-clippy">
      <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://gist.github.com/8305065.git" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url " data-protocol-type="ssh" data-url="git@gist.github.com:/8305065.git">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="clone-url-box">
    <input type="text" class="clone url-field js-url-field" value="git@gist.github.com:/8305065.git" readonly="readonly">
    <span class="url-box-clippy">
      <button aria-label="copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="git@gist.github.com:/8305065.git" data-copied-hint="copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>
      or <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>.
</p>


    <a aria-label="Download git-php-webhook.php as a zip file" class="minibutton sidebar-button" href="/marcelosomers/8305065/download" rel="nofollow" title="Download git-php-webhook.php as a zip file">
      <span class="octicon octicon-cloud-download"></span>
      Download Gist
</a>  </div><!-- /.only-with-full-nav -->

</div>


    <div class="gist-content">
          <div class="gist-meta">
            <div class="gist-description">
              <p><div>A basic webhook for deploying updates to repos on Github to your local server</div></p>
            </div>
          </div>

      <div class="files">
            <div id="file-git-php-webhook-php" class="file ">
  <div class="meta clearfix">
    <div class="info file-name">
      <span class="icon">
        <b class="octicon octicon-gist"></b>
      </span>
      <a aria-label="Permalink" href="#file-git-php-webhook-php" class="tooltipped tooltipped-s permalink"><strong class="file-name js-selectable-text">git-php-webhook.php</strong></a>
    </div>
    <div class="actions">
      <div class="button-group">
        <a aria-label="View Raw"
          href="/marcelosomers/8305065/raw/0829532a9a37896c0954d48662e00e1fd852eb3b/git-php-webhook.php"
          data-skip-pjax class="minibutton raw-url js-view-raw">Raw</a>
      </div>
    </div>
  </div>
  <div class="suppressed">
    <a class="js-show-suppressed-file">File suppressed. Click to show.</a>
  </div>
  <div class="blob-wrapper data type-php js-blob-data">
    



    <div class="file-data">
      <table cellpadding="0" cellspacing="0" class="lines highlight">
        <tr>
          <td class="line-numbers">
            <span class="line-number" id="file-git-php-webhook-php-L1" rel="file-git-php-webhook-php-L1">1</span>
            <span class="line-number" id="file-git-php-webhook-php-L2" rel="file-git-php-webhook-php-L2">2</span>
            <span class="line-number" id="file-git-php-webhook-php-L3" rel="file-git-php-webhook-php-L3">3</span>
            <span class="line-number" id="file-git-php-webhook-php-L4" rel="file-git-php-webhook-php-L4">4</span>
            <span class="line-number" id="file-git-php-webhook-php-L5" rel="file-git-php-webhook-php-L5">5</span>
            <span class="line-number" id="file-git-php-webhook-php-L6" rel="file-git-php-webhook-php-L6">6</span>
            <span class="line-number" id="file-git-php-webhook-php-L7" rel="file-git-php-webhook-php-L7">7</span>
            <span class="line-number" id="file-git-php-webhook-php-L8" rel="file-git-php-webhook-php-L8">8</span>
            <span class="line-number" id="file-git-php-webhook-php-L9" rel="file-git-php-webhook-php-L9">9</span>
            <span class="line-number" id="file-git-php-webhook-php-L10" rel="file-git-php-webhook-php-L10">10</span>
            <span class="line-number" id="file-git-php-webhook-php-L11" rel="file-git-php-webhook-php-L11">11</span>
            <span class="line-number" id="file-git-php-webhook-php-L12" rel="file-git-php-webhook-php-L12">12</span>
            <span class="line-number" id="file-git-php-webhook-php-L13" rel="file-git-php-webhook-php-L13">13</span>
            <span class="line-number" id="file-git-php-webhook-php-L14" rel="file-git-php-webhook-php-L14">14</span>
            <span class="line-number" id="file-git-php-webhook-php-L15" rel="file-git-php-webhook-php-L15">15</span>
            <span class="line-number" id="file-git-php-webhook-php-L16" rel="file-git-php-webhook-php-L16">16</span>
            <span class="line-number" id="file-git-php-webhook-php-L17" rel="file-git-php-webhook-php-L17">17</span>
            <span class="line-number" id="file-git-php-webhook-php-L18" rel="file-git-php-webhook-php-L18">18</span>
            <span class="line-number" id="file-git-php-webhook-php-L19" rel="file-git-php-webhook-php-L19">19</span>
            <span class="line-number" id="file-git-php-webhook-php-L20" rel="file-git-php-webhook-php-L20">20</span>
            <span class="line-number" id="file-git-php-webhook-php-L21" rel="file-git-php-webhook-php-L21">21</span>
            <span class="line-number" id="file-git-php-webhook-php-L22" rel="file-git-php-webhook-php-L22">22</span>
            <span class="line-number" id="file-git-php-webhook-php-L23" rel="file-git-php-webhook-php-L23">23</span>
            <span class="line-number" id="file-git-php-webhook-php-L24" rel="file-git-php-webhook-php-L24">24</span>
            <span class="line-number" id="file-git-php-webhook-php-L25" rel="file-git-php-webhook-php-L25">25</span>
            <span class="line-number" id="file-git-php-webhook-php-L26" rel="file-git-php-webhook-php-L26">26</span>
            <span class="line-number" id="file-git-php-webhook-php-L27" rel="file-git-php-webhook-php-L27">27</span>
            <span class="line-number" id="file-git-php-webhook-php-L28" rel="file-git-php-webhook-php-L28">28</span>
            <span class="line-number" id="file-git-php-webhook-php-L29" rel="file-git-php-webhook-php-L29">29</span>
            <span class="line-number" id="file-git-php-webhook-php-L30" rel="file-git-php-webhook-php-L30">30</span>
            <span class="line-number" id="file-git-php-webhook-php-L31" rel="file-git-php-webhook-php-L31">31</span>
            <span class="line-number" id="file-git-php-webhook-php-L32" rel="file-git-php-webhook-php-L32">32</span>
            <span class="line-number" id="file-git-php-webhook-php-L33" rel="file-git-php-webhook-php-L33">33</span>
            <span class="line-number" id="file-git-php-webhook-php-L34" rel="file-git-php-webhook-php-L34">34</span>
            <span class="line-number" id="file-git-php-webhook-php-L35" rel="file-git-php-webhook-php-L35">35</span>
            <span class="line-number" id="file-git-php-webhook-php-L36" rel="file-git-php-webhook-php-L36">36</span>
            <span class="line-number" id="file-git-php-webhook-php-L37" rel="file-git-php-webhook-php-L37">37</span>
            <span class="line-number" id="file-git-php-webhook-php-L38" rel="file-git-php-webhook-php-L38">38</span>
            <span class="line-number" id="file-git-php-webhook-php-L39" rel="file-git-php-webhook-php-L39">39</span>
            <span class="line-number" id="file-git-php-webhook-php-L40" rel="file-git-php-webhook-php-L40">40</span>
            <span class="line-number" id="file-git-php-webhook-php-L41" rel="file-git-php-webhook-php-L41">41</span>
            <span class="line-number" id="file-git-php-webhook-php-L42" rel="file-git-php-webhook-php-L42">42</span>
            <span class="line-number" id="file-git-php-webhook-php-L43" rel="file-git-php-webhook-php-L43">43</span>
            <span class="line-number" id="file-git-php-webhook-php-L44" rel="file-git-php-webhook-php-L44">44</span>
          </td>
          <td class="line-data">
            <pre class="line-pre"><div class="line" id="file-git-php-webhook-php-LC1"><span class="cp">&lt;?php</span></div><div class="line" id="file-git-php-webhook-php-LC2"><span class="sd">/** </span></div><div class="line" id="file-git-php-webhook-php-LC3"><span class="sd">  * This script is for easily deploying updates to Github repos to your local server. It will automatically git clone or </span></div><div class="line" id="file-git-php-webhook-php-LC4"><span class="sd">  * git pull in your repo directory every time an update is pushed to your $BRANCH (configured below).</span></div><div class="line" id="file-git-php-webhook-php-LC5"><span class="sd">  * </span></div><div class="line" id="file-git-php-webhook-php-LC6"><span class="sd">  * Read more about how to use this script at http://behindcompanies.com/2014/01/a-simple-script-for-deploying-code-with-githubs-webhooks/</span></div><div class="line" id="file-git-php-webhook-php-LC7"><span class="sd">  * </span></div><div class="line" id="file-git-php-webhook-php-LC8"><span class="sd">  * INSTRUCTIONS:</span></div><div class="line" id="file-git-php-webhook-php-LC9"><span class="sd">  * 1. Edit the variables below</span></div><div class="line" id="file-git-php-webhook-php-LC10"><span class="sd">  * 2. Upload this script to your server somewhere it can be publicly accessed</span></div><div class="line" id="file-git-php-webhook-php-LC11"><span class="sd">  * 3. Make sure the apache user owns this script (e.g., sudo chown www-data:www-data webhook.php)</span></div><div class="line" id="file-git-php-webhook-php-LC12"><span class="sd">  * 4. (optional) If the repo already exists on the server, make sure the same apache user from step 3 also owns that </span></div><div class="line" id="file-git-php-webhook-php-LC13"><span class="sd">  *    directory (i.e., sudo chown -R www-data:www-data)</span></div><div class="line" id="file-git-php-webhook-php-LC14"><span class="sd">  * 5. Go into your Github Repo &gt; Settings &gt; Service Hooks &gt; WebHook URLs and add the public URL </span></div><div class="line" id="file-git-php-webhook-php-LC15"><span class="sd">  *    (e.g., http://example.com/webhook.php)</span></div><div class="line" id="file-git-php-webhook-php-LC16"><span class="sd">  *</span></div><div class="line" id="file-git-php-webhook-php-LC17"><span class="sd">**/</span></div><div class="line" id="file-git-php-webhook-php-LC18">&nbsp;</div><div class="line" id="file-git-php-webhook-php-LC19"><span class="c1">// Set Variables</span></div><div class="line" id="file-git-php-webhook-php-LC20"><span class="nv">$LOCAL_ROOT</span>         <span class="o">=</span> <span class="s2">&quot;/path/to/repo/parent/directory&quot;</span><span class="p">;</span></div><div class="line" id="file-git-php-webhook-php-LC21"><span class="nv">$LOCAL_REPO_NAME</span>    <span class="o">=</span> <span class="s2">&quot;REPO_NAME&quot;</span><span class="p">;</span></div><div class="line" id="file-git-php-webhook-php-LC22"><span class="nv">$LOCAL_REPO</span>         <span class="o">=</span> <span class="s2">&quot;</span><span class="si">{</span><span class="nv">$LOCAL_ROOT</span><span class="si">}</span><span class="s2">/</span><span class="si">{</span><span class="nv">$LOCAL_REPO_NAME</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">;</span></div><div class="line" id="file-git-php-webhook-php-LC23"><span class="nv">$REMOTE_REPO</span>        <span class="o">=</span> <span class="s2">&quot;git@github.com:username/reponame.git&quot;</span><span class="p">;</span></div><div class="line" id="file-git-php-webhook-php-LC24"><span class="nv">$BRANCH</span>             <span class="o">=</span> <span class="s2">&quot;master&quot;</span><span class="p">;</span></div><div class="line" id="file-git-php-webhook-php-LC25">&nbsp;</div><div class="line" id="file-git-php-webhook-php-LC26"><span class="k">if</span> <span class="p">(</span> <span class="nv">$_POST</span><span class="p">[</span><span class="s1">&#39;payload&#39;</span><span class="p">]</span> <span class="p">)</span> <span class="p">{</span></div><div class="line" id="file-git-php-webhook-php-LC27">  <span class="c1">// Only respond to POST requests from Github</span></div><div class="line" id="file-git-php-webhook-php-LC28">  </div><div class="line" id="file-git-php-webhook-php-LC29">  <span class="k">if</span><span class="p">(</span> <span class="nb">file_exists</span><span class="p">(</span><span class="nv">$LOCAL_REPO</span><span class="p">)</span> <span class="p">)</span> <span class="p">{</span></div><div class="line" id="file-git-php-webhook-php-LC30">    </div><div class="line" id="file-git-php-webhook-php-LC31">    <span class="c1">// If there is already a repo, just run a git pull to grab the latest changes</span></div><div class="line" id="file-git-php-webhook-php-LC32">    <span class="nb">shell_exec</span><span class="p">(</span><span class="s2">&quot;cd </span><span class="si">{</span><span class="nv">$LOCAL_REPO</span><span class="si">}</span><span class="s2"> &amp;&amp; git pull&quot;</span><span class="p">);</span></div><div class="line" id="file-git-php-webhook-php-LC33">&nbsp;</div><div class="line" id="file-git-php-webhook-php-LC34">    <span class="k">die</span><span class="p">(</span><span class="s2">&quot;done &quot;</span> <span class="o">.</span> <span class="nb">mktime</span><span class="p">());</span></div><div class="line" id="file-git-php-webhook-php-LC35">  <span class="p">}</span> <span class="k">else</span> <span class="p">{</span></div><div class="line" id="file-git-php-webhook-php-LC36">    </div><div class="line" id="file-git-php-webhook-php-LC37">    <span class="c1">// If the repo does not exist, then clone it into the parent directory</span></div><div class="line" id="file-git-php-webhook-php-LC38">    <span class="nb">shell_exec</span><span class="p">(</span><span class="s2">&quot;cd </span><span class="si">{</span><span class="nv">$LOCAL_ROOT</span><span class="si">}</span><span class="s2"> &amp;&amp; git clone </span><span class="si">{</span><span class="nv">$REMOTE_REPO</span><span class="si">}</span><span class="s2">&quot;</span><span class="p">);</span></div><div class="line" id="file-git-php-webhook-php-LC39">    </div><div class="line" id="file-git-php-webhook-php-LC40">    <span class="k">die</span><span class="p">(</span><span class="s2">&quot;done &quot;</span> <span class="o">.</span> <span class="nb">mktime</span><span class="p">());</span></div><div class="line" id="file-git-php-webhook-php-LC41">  <span class="p">}</span></div><div class="line" id="file-git-php-webhook-php-LC42"><span class="p">}</span></div><div class="line" id="file-git-php-webhook-php-LC43">&nbsp;</div><div class="line" id="file-git-php-webhook-php-LC44"><span class="cp">?&gt;</span><span class="x"></span></div></pre>
          </td>
        </tr>
      </table>
    </div>

  </div>
</div>


        <div class="discussion-timeline js-quote-selection-container">

          <div class="js-discussion">
            
          </div>

          <div class="discussion-timeline-actions">
              <div class="timeline-comment-wrapper timeline-new-comment js-comment-container">
  <a href="/mosbasik"><img class="timeline-comment-avatar" src="https://avatars1.githubusercontent.com/u/5025277?s=140" width="48" height="48"></a>

  <form accept-charset="UTF-8" action="/marcelosomers/8305065/comments" class="js-new-comment-form js-comment-form" method="post"><div style="display:none"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="1wTwFoQyTH8MVz2nUJABoPJT/3Uw3Y9S0maJat+jlYmm3Puim1g6InH8gDdol+Nj6d1N1WQzqE8Aix3THKJVzA==" /></div>
    <div class="timeline-comment">
      <input type="hidden" name="gist" value="8305065" />

      <div id="js-new-comment-form-actions">
        
<div class="js-previewable-comment-form previewable-comment-form write-selected" data-preview-url="/preview">
  <div class="comment-form-head tabnav">
    <ul class="tabnav-tabs">
      <li><a href="#comment_body_983_write_bucket" class="tabnav-tab write-tab js-write-tab selected">Write</a></li>
      <li><a href="#comment_body_983_preview_bucket" class="tabnav-tab preview-tab js-preview-tab">Preview</a></li>
    </ul>
    <span class="tabnav-right">
      <a class="tabnav-widget text tabnav-extras" href="https://help.github.com/articles/github-flavored-markdown" target="_blank">
        <span class="octicon octicon-markdown"></span>
        Parsed as Markdown
      </a>
      
<a href="#fullscreen_comment_body_983" class="enable-fullscreen js-enable-fullscreen tooltipped-n
  tabnav-widget text tabnav-extras"  >
  <span class="octicon octicon-screen-full"></span>
  Edit in fullscreen
</a>


    </span>
  </div>


  <div id="comment_body_983_write_bucket" class="write-content js-write-bucket ">
    <textarea name="comment[body]"
              tabindex="1"
              id="comment_body_983"
              placeholder="Leave a comment"
              class="comment-form-textarea js-comment-field js-size-to-fit js-quote-selection-target input-with-fullscreen-icon"
              data-suggester="comment_body_983_suggestions"
              required></textarea>

    

  </div>
  <div id="comment_body_983_preview_bucket" class="preview-content js-preview-bucket">
    <div class="comment-body markdown-body  js-comment-body">
    </div>
  </div>


  <div class="suggester-container">
    <div class="suggester js-navigation-container" id="comment_body_983_suggestions"
         data-url="/marcelosomers/8305065/suggestions">
    </div>
  </div>
</div>


        <div class="form-actions">
          <button type="submit" class="button primary js-comment-submit" tabindex="2" data-disable-with data-disable-invalid>
            Comment
          </button>
        </div>
      </div>
    </div>
</form></div>
  

          </div>
        </div><!-- /.discussion-timeline -->
      </div><!-- /.gist-content -->
    </div>
  </div>
</div><!-- /.container -->

  <div class="context-overlay"></div>
</div>

    </div>
    <div class="slow-loading-overlay"></div>
  </div>

  <div id="ajax-error-message" class="flash flash-error">
    <div class="container">
      <span class="octicon octicon-alert"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="octicon octicon-x ajax-error-dismiss"></a>
    </div>
  </div>


  <footer>
    <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="https://github.com/blog">Blog</a></li>
      <li><a href="https://github.com/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github" title="GitHub "></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.02174s from github-fe102-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
        <li><a href="https://github.com/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->

  </footer>

  <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
        <div class="suggester-container">
            <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                data-url="/marcelosomers/8305065/suggestions">
            </div>
        </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>


</body>
</html>
