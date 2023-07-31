---
title: "Kagome Front Matter"
date: 2023-07-28T18:04:00+08:00
draft: false
toc: true
cover: "https://fgo.wiki/images/0/0b/%E3%83%A1%E3%83%AA%E3%83%A5%E3%82%B8%E3%83%BC%E3%83%8C%E6%BB%A1%E7%A0%B4.png"
disable_comment: false
description: ""
tags : [
  "Hugo","Kagome"
]
categories : [
  "Hugo",
]
---
## Front Matter

Front Matter一般放在文章的最顶部，Hugo支持三种书写格式，

- `TOML`使用+++来包裹内容

- `YAML`使用---来包裹内容

- `JSON`使用{和}来包裹内容


可配置的内容见Hugo官方文档: [front-matter](https://gohugo.io/content-management/front-matter/)。

## Archetypes

在使用hugo new来创建文章时，会查找`archetypes`下的内容并填充到文章内容，查找`archetypes`原型内容的顺序如下:

- archetypes/posts.md

- archetypes/default.md

- themes/my-theme/archetypes/posts.md

- themes/my-theme/archetypes/default.md


建议修改原型中的内容为自己需要的内容，这样不用每次创建文章都需要手动去Front Matter中添加或删除一下字段属性。

更多的相关操作请查阅Hugo官方文档: [archetypes](https://gohugo.io/content-management/archetypes/)。

## 自定义字段

在使用kagome主题时，Front Matter添加了如下些字段属性:

### disable_comment

boolean类型，表示当前文章是否显示disqus评论，优先级最高，大于config.toml中的配置

如在config.toml中全局禁用了disqus评论系统:

```toml
[privacy]
    [privacy.disqus]
        disable = true
```


但是在某一篇文章我们想单独打开disqus评论，只需要在Front Matter中添加:

```toml
disable_comment = false
```


注意的是，Disqus配置只作用于section下的文章(/posts/a.md)，如果你创建的有自定义单页面如：about(关于)，link(友联)等页面是无效的。

只有`layout`为message的单页面受控于`Front Matter`中的`disable_comment`。

并且`config`中的相关`privacy.disqus`设置对它也无效

### aplayer

boolean类型，表示是否启用aplayer播放器，只有设置为true以后，文章中插入的aplayer代码才会正常生效。

### dplayer

boolean类型，表示是否启用dplayer播放器，只有设置为true以后，文章中插入的dplayer代码才会正常生效。

### toc

boolean类型，表示是否启用TOC目录Widget组件，只有设置为true并且只在文章页(在sections下的文章)才会显示TOC小部件。

### cover

string类型，文章的封面图地址，默认没有不显示