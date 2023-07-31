---
title: "Hugo Layouts Folder"
date: 2023-07-28T18:04:00+08:00
draft: false
toc: true
cover: ""
disable_comment: false
description: ""
tags : [
"Hugo",
]
categories : [
"Hugo",
]
---
# hugo主目录

在Hugo中，有一些重要的目录，每个目录都有特定的作用。以下是Hugo目录的常见用途：  

1. `content` 目录：这个目录用于存放网站的内容文件，如文章、页面等。每个内容文件都可以使用Markdown、HTML或其他支持的格式编写。  
2. `layouts` 目录：这个目录用于存放网站的布局模板。在这里，您可以定义不同类型页面的布局和样式，包括主页、文章页面、分类页面等。  
3. `static` 目录：这个目录用于存放静态文件，如图片、CSS样式表、JavaScript脚本等。这些文件会被直接复制到生成的网站中，而不会经过Hugo的处理。  
4. `archetypes` 目录：这个目录用于存放内容模板文件，用于生成新的内容文件。当您创建新的文章或页面时，可以使用这些模板文件来快速生成并填充内容。  
5. `data` 目录：这个目录用于存放网站的数据文件，如配置文件、JSON文件等。这些数据文件可以在模板中使用，用于动态生成网站的内容。 
6. `config` 文件：这个文件是Hugo的配置文件，用于配置网站的各种设置，如网站标题、语言、主题等。它通常位于网站的根目录下，文件名为 `config.toml` 、 `config.yaml` 或 `config.json` 。  这些是Hugo中常见的目录及其作用。但请注意，具体的目录结构可能会因Hugo主题和个人配置的不同而有所变化。



# hugo/layouts目录

在Hugo中，layouts文件夹用于存放网站的布局模板。每个文件夹在layouts目录下都有特定的作用，以下是常见的几个文件夹及其作用：

1. `layouts/_default`：这个文件夹中的模板文件是默认的布局模板，适用于所有页面类型。 例如，`layouts/_default/single.html`用于渲染单个内容页面，`layouts/_default/list.html`用于渲染内容列表页面。
2. `layouts/partials`：这个文件夹中的模板文件是可重用的部分模板，用于在其他模板中引用。例如，`layouts/partials/header.html`用于定义网站的页眉部分，可以在其他页面的模板中通过`{{ partial "header.html" }}`引用。
3. `layouts/section`：这个文件夹中的模板文件用于渲染特定的部分页面，根据不同的section（部分）进行分类。例如，`layouts/section/blog.html`用于渲染博客部分的页面，`layouts/section/projects.html`用于渲染项目部分的页面。
4. `layouts/taxonomy`：这个文件夹中的模板文件用于渲染特定的分类或标签页面，根据不同的分类或标签进行分类。例如，`layouts/taxonomy/category.html`用于渲染按分类进行归档的页面，`layouts/taxonomy/tag.html`用于渲染按标签进行归档的页面。
5. `layouts/shortcodes`：这个文件夹中的模板文件用于定义短代码（shortcodes），可以在内容页面中使用。短代码是一种特殊的标记，用于插入动态内容或功能。例如，`layouts/shortcodes/gallery.html`用于定义一个名为gallery的短代码，可以在内容页面中使用`{{` `<gallery` `>}}`来插入一个图片库。 这些是常见的layouts文件夹及其作用，但实际上您可以根据自己的需求和网站结构进行自定义和扩展。请注意，具体的文件和模板名称可能会因Hugo主题和配置的不同而有所变化。
6. `layouts/page`：在Hugo中， `layouts/page` 文件夹用于存放特定页面类型的布局模板。这个文件夹是可选的，如果您的网站中有特定类型的页面，可以在 `layouts/page` 文件夹中创建相应的模板文件来渲染这些页面。 例如，如果您的网站有一个名为 `about` 的页面类型，您可以在 `layouts/page` 文件夹中创建一个名为 `about.html` 的模板文件，用于渲染 `about` 类型的页面。在这个模板文件中，您可以定义特定于 `about` 页面类型的布局和样式。  需要注意的是， `layouts/page` 文件夹中的模板文件的命名应与页面类型的名称相对应，以便Hugo能够正确地匹配页面类型和模板文件。  如果您的网站没有特定类型的页面，或者您希望使用默认的布局模板来渲染所有页面类型，那么您可以在 `layouts/_default` 文件夹中创建相应的模板文件。 `layouts/_default` 文件夹中的模板文件适用于所有页面类型。  请注意，具体的文件和模板名称可能会因Hugo主题和配置的不同而有所变化。

