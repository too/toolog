{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block page_class %}
  {% if is_home() %} page-home {% endif %}
{% endblock %}

{% block content %}
  <section id="posts" class="posts-expand">
    {% for post in page.posts %}
      {{ post_template.render(post, true) }}
    {% endfor %}
  </section>

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}

{% block script_extra %}
<script>(function() {
  // Customize these as you wish
  var pastdays   = 0;       // # of past days to show (0 to 30)
  var futuredays = 60;      // # of future days to show (0 to 365)
  var cachemins  = 10;      // # of minutes to wait before refreshing calendar data (2 to 1440)
  var container  = "icjs";  // ID of div to embed calendar into
  // Do not change anything below this
  var s = document.createElement("script"); s.type = "text/javascript"; s.async = true; s.src = "https://zetabee.com/icaljs/embed?calid=UnVjelVEU3d6ZWpXb0FVWmtpZ2FBQT09&offset=0&cachemins=" + cachemins + "&futuredays=" + futuredays + "&pastdays=" + pastdays + "&container=" + container;
  (document.getElementsByTagName("head")[0] || document.getElementsByTagName("body")[0]).appendChild(s);
})();</script>

{% endblock %}