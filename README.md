# MVCExample
MVCExample

Create an Application that load data from the Internet, the data is in JSON

format and it is array of dictionary. The dictionary has details such as title,

date, html, …etc.

We need to create 2 views. The first one (ListView) is a list that show the item

title (ANNOUNCEMENT_TITLE) and date (ANNOUNCEMENT_DATE). When

I tap on one item, you push the second view (DetailsView) that has a webview

to load html (ANNOUNCEMENT_HTML) code.

Also, we need to create a model class (DataManager) that can do all the

network operation and notify the view using handlers.

- ListView:

- It has a ListView to show the list.

- Show ActivityIndicator View.

- Initiate data loading using the DataManger and provide the handler for it

to be get invoked once data finished load.

- Dismiss ActivityIndicator View.

- Bind the data to ListView cells.

- When user tap on the cell you push the DetailsView.

- DetailsView

- It has a Web View

- Bind the html code (ANNOUNCEMENT_HTML) received to it.

- DataManager Model Class

- It has one method &quot;loadData&quot; that has 2 parameter:

- url

- handler

- The DataManager create an async URL Request and load the data.

- On Finish Loading , you need to invoke the handler and pass the array list

after parsing the JSON data.

You can load the data from the following URL:

http://www.solutions4mobility.com/AABToyota/ipdp/ipdpb.ashx?CFG=OPTIMAL&amp;p=Common.Ann

ouncements&amp;Handler=News&amp;MODULE_ID=501&amp;TemplateName=News.htm&amp;APPLICATION_NA

ME=TOYOTA&amp;F=J
