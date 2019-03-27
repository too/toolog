---
title: Hexo blog launch @2017
date: 2017-02-08 11:28:42
tags: 
- hexo
- log
---

# 为什么会有 Too@CD？
## 引子
自从有 Blog 以来，用过 blogspot, Wordpress,  MSN Space, 后来 Twitter 出现了，微博兴起，长文章很少写了，直到出于搞成都的技术活动需要，用 pelican 生成了个 devcd.github.io 静态网站，出于对 pelican 主题外观的不满，当看到 NexT 这个主题后，忍不住用 hexo 来开启一个新的博客。

## 这个博客的主要目的
作为个人 Blog，分享和记录一些技术和生活相关的东西吧。主要会涉及 Python，web 开发，hacker 主题等，成都相关的一些技术活动也会有吧。目前先打算这样，毕竟用 markdown 来做各种记录应该还是很方便的，说了那么久要用起来，先上路，再瞄准吧。
<!-- more -->
# 这个站是怎么做的
- [Hexo](https://hexo.io/)，**"A fast, simple & powerful blog framework"**，使用 markdwon 文件来生成静态网站，一个台湾小伙子用 JavaScript 写的。
- [NexT 主题](http://theme-next.iissnan.com/)，**"精于心，简于形，Elegant Theme for Hexo"**，让我看到之后就念念不忘，有时候外表真的很重要。

主要就是使用到上面的连个东东，参考了网上一些文章，部署到了 Github Pages 上，由于 github.io 国内访问有问题，同时部署了一份到 coding.net 上，访问地址是 http://hx.fctoo.com

## hexo & NexT theme 配置记录
具体参考官网文档和下面的参考链接文章差不多了，其中有几个要注意的地方列在下面：
* 安装额外的组件：hexo-generator-sitemap，hexo-deployer-git
    ``` bash
    npm install hexo-deployer-git --save
    npm install hexo-generator-sitemap --save
    ```
    如果 `sitesmap.xml` 没有生成，检查下是不是 generator 没装好，我是重装了一次才好了。搞了半天... 也算是侥幸在用 `npm list` 的时候发现这个 package 报错才知道。
* tags 页面生成了 `tags/index.md` 文件之后，在头设置里加入 `type: "tags"`，要不就是个空白页面
* coding.net 的 pages 绑定个人域名，耐心等个10多分钟会生效吧

## 参考链接
- [手把手教你使用Hexo + Github Pages搭建个人独立博客](http://jiji262.github.io/2016/04/15/2016-04-15-hexo-github-pages-blog/)
- [Hexo博客双线部署](http://ieclipse.cn/2016/08/29/Web/Hexo-deploy-lines/)
