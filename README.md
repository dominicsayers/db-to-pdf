I needed to take a list of records in a database (it could have been a spreadsheet) and create a multi-page PDF document based on that data, one page per record.

I couldn't find an easy way to do it, especially handling the page breaks.

Turned out that CSS `@media print` can control page breaks pretty easily, so I just created a view that output all the records and used my browser's Print function to create the PDF.
