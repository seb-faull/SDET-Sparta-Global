# Parsing Data and Hash Parsing with JSON
### In order to parse data and test it you must

``` require 'spec_helper' ``` 

``` require 'json' ``` - considering you have installed json locally in your machine's environment

Before you iterate through all of the objects in the array, you must first parse the file ```json_example.json``` in order for it to be read:

```
before(:all) do
  @json = JSON.parse(File.read('json_example.json'))
end
```

#### The tests run in 3 parts:
  
  1) it 'should have the key colour for each data object'
  2) it "the colour red should have the hex value of '#FF0' "
  3) it "the colour green should have the RGBA value of '0,255,0,1'
  
  Hashes, keys and values of hashes needs to be accessed in order for it to be parsed correctly and pass the tests. 
  
  See below to the JSON data that was used:
  
  ``` {
  "colors": [
	{
	  "color": "black",
	  "category": "hue",
	  "type": "primary",
	  "code": {
		"rgba": [255,255,255,1],
		"hex": "#000"
	  }
	},
	{
	  "color": "white",
	  "category": "value",
	  "code": {
		"rgba": [0,0,0,1],
		"hex": "#FFF"
	  }
	},
	{
	  "color": "red",
	  "category": "hue",
	  "type": "primary",
	  "code": {
		"rgba": [255,0,0,1],
		"hex": "#FF0"
	  }
	},
	{
	  "color": "blue",
	  "category": "hue",
	  "type": "primary",
	  "code": {
		"rgba": [0,0,255,1],
		"hex": "#00F"
	  }
	},
	{
	  "color": "yellow",
	  "category": "hue",
	  "type": "primary",
	  "code": {
		"rgba": [255,255,0,1],
		"hex": "#FF0"
	  }
	},
	{
	  "color": "green",
	  "category": "hue",
	  "type": "secondary",
	  "code": {
		"rgba": [0,255,0,1],
		"hex": "#0F0"
	  }
	}
  ]
}
```



  
