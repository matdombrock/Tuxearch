# Tuxearch
## Pronounced: (tux-search)
### A Searchable Database of *nix Commands. 

[Check It Out!](http://mzero.space/tuxearch/) [Self-hosted demo site, may be down.]

![Tuxearch Screenshot](http://mzero.space/main/wp-content/uploads/2018/03/mzero-space-cli-.png)

## Adding to the database:
Adding to the database is actually really easy. Just edit "db/database.json" and append the new data to the bottom of the file  as follows:
```
	{
		"INFO" : "info about your command",
		"COMMAND" : "actual command",
		"TAGS" : "tags split by space not commas"
	}
```
Make sure you are adding valid JSON and that you do not break the JSON formatting. If you need yo check your JSON for validity you can use a tool like [JSON Lint](https://jsonlint.com/). 
 
The fastest way to get new data into the system is to submit a pull request on github. However, if you don't feel comforatble with that or don't have the time. Feel free to [sumbit an issue](https://github.com/matdombrock/Tuxearch/issues) and I will work on getting it added in. 
