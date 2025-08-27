# Markdown Cheat Sheet

Thanks for visiting [The Markdown Guide](https://www.markdownguide.org)!

This Markdown cheat sheet provides a quick overview of all the Markdown syntax elements. It can’t cover every edge case, so if you need more information about any of these elements, refer to the reference guides for [basic syntax](https://www.markdownguide.org/basic-syntax/) and [extended syntax](https://www.markdownguide.org/extended-syntax/).

## Basic Syntax

These are the elements outlined in John Gruber’s original design document. All Markdown applications support these elements.
Each syntax element is listed, with an example of the output and the markdown source syntax used to produce the output.

- [Heading](#Heading)
- [Bold](#Bold)
- [Italic](#Italic)
- [Blockquote](#Blockquote)
- [Ordered List](#Ordered_List)
- [Unordered List](#Unordered_List)
- [Code](#Code)
- [Horizontal Rule](#Horizontal_Rule)
- [Link](#Link)
- [Image](#Image)
- [Table](#Table)
- [Fenced Code Block](#Fenced_Code_Block)
- [Footnote](#Footnote)
- [Strikethrough](#Strikethrough)
- [Task List](#Task_List)
- [Emoji](#Emoji)

### Heading
# Heading 1
## Heading 2
### Heading 3
```
# Heading 1
## Heading 2
### Heading 3
```

### Bold
**bold text**
```
**bold text**
```

### Italic
*italicized text*
```
*italicized text*
```

### Blockquote
> blockquote
```
> blockquote
```

### Ordered List

1. First item
2. Second item
3. Third item
```
1. First item
2. Second item
3. Third item
```

### Unordered List
- First item
- Second item
- Third item
```
- First item
- Second item
- Third item
```

### Code
`code`
```
`code`
```

### Horizontal Rule
---
```
---
```
### Link
[Markdown Guide](https://www.markdownguide.org)
```
[Markdown Guide](https://www.markdownguide.org)
```
### Image
![alt text](https://www.markdownguide.org/assets/images/tux.png)
```
![alt text](https://www.markdownguide.org/assets/images/tux.png)
```

## Extended Syntax
These elements extend the basic syntax by adding additional features. Not all Markdown applications support these elements.

### Table
| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |
```
| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |
```
### Fenced Code Block
```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```
Open this README.md for syntax.

### Footnote
Here's a sentence with a footnote. [^1] <- **Click to view**
[^1]: This is the footnote.
```
Here's a sentence with a footnote. [^1]
[^1]: This is the footnote.
```

### Strikethrough
~~Draw: sprite sheets for enemy, player and background~~
```
~~Draw: sprite sheets for enemy, player and background~~
```

### Task List

- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media
```
- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media
```

### Emoji
That is so funny! :joy:
```
That is so funny! :joy:
```
(See also [Copying and Pasting Emoji](https://www.markdownguide.org/extended-syntax/#copying-and-pasting-emoji))
