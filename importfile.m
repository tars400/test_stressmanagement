function data = importfile(workbookFile, sheetName, range)
%IMPORTFILE Import data from a spreadsheet
%   DATA = IMPORTFILE(FILE) reads all numeric data from the first worksheet
%   in the Microsoft Excel spreadsheet file named FILE and returns the
%   numeric data.
%
%   DATA = IMPORTFILE(FILE,SHEET) reads from the specified worksheet.
%
%   DATA = IMPORTFILE(FILE,SHEET,RANGE) reads from the specified worksheet
%   and from the specified RANGE. Specify RANGE using the syntax
%   'C1:C2',where C1 and C2 are opposing corners of the region.%
% Example:
%   dataset = importfile('123_dataset.xlsx','Sheet1','B2:BI3015');
%

%% Input handling

% If no sheet is specified, read first sheet
if nargin == 1 || isempty(sheetName)
    sheetName = 1;
end

% If no range is specified, read all data
if nargin <= 2 || isempty(range)
    range = '';
end

%% Import the data
data = xlsread(workbookFile, sheetName, range);

