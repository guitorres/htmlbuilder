# htmlbuilder
This unit allows building simplified html with Delphi.

## Hello world!

```delphi
var
  html: THTMLReport;
begin
  html := THTMLReport.Create;
  try
    html.Style := '*{font-size:15pt}';
    html.AddParagraph('Hello World!', '');
    ShowMessage(html.Build);
  finally
    html.Free;
  end;
end;
```

```html
<html >
   <head>
      <style>
         *{font-size:15pt}
      </style>
   </head>
   <body>
      <p >
         Hello World!
      </p>
   </body>
</html>
```

## easy table

```delphi
var
  html: THTMLReport;
  table: THTMLTable;
  row: THTMLRow;
  i,j: Integer;
begin
  html := THTMLReport.Create;
  table := THTMLTable.Create;
  try
    html.Style := '*{font-size:15pt}';
    html.AddTable(table);

    for i := 1 to 100 do
    begin
      row := THTMLRow.Create;
      for j := 1 to 5 do
        row.AddCell(Format('Row %d Column %d', [i,j]), '');
      table.RowList.Add(row);
    end;

    ShowMessage(html.Build);
  finally
    html.Free;
  end;
```

```html
<html >
   <head>
      <style>
         *{font-size:15pt}
      </style>
   </head>
   <body>
      <table >
         <tr  >
            <td >
               Row 1 Column 1
            </td>
            <td >
               Row 1 Column 2
            </td>
            <td >
               Row 1 Column 3
            </td>
            <td >
               Row 1 Column 4
            </td>
            <td >
               Row 1 Column 5
            </td>
         </tr>
         <!-- ... -->
         <tr  >
            <td >
               Row 100 Column 1
            </td>
            <td >
               Row 100 Column 2
            </td>
            <td >
               Row 100 Column 3
            </td>
            <td >
               Row 100 Column 4
            </td>
            <td >
               Row 100 Column 5
            </td>
         </tr>
      </table>
   </body>
</html>
```

## dataset to table

```delphi
table := THTMLTable.Create;
table.SetDataSet(cdsTest);
ShowMessage(table.Build);
```
    
## and more

check the /demo directory