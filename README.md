## htmlbuilder
This unit allows building simplified html with  Delphi.

## dataset to table

```delphi
table := THTMLTable.Create;
table.SetDataSet(cdsTest);
ShowMessage(table.Build);
```

## easy table

```delphi
table := THTMLTable.Create;
for i := 1 to 100 do
begin
  row := THTMLRow.Create;
  for j := 1 to 5 do  
    row.AddCell(Format('Row %d Column %d', [i,j], '');    
  table.RowList.AddRow(row);  
end;
ShowMessage(table.Build);
```
    
## and more

check the /demo directory