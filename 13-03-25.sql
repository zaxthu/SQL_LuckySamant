use vit
switched to db vit
db.products.insertMany([
	{ "_id" : 1, "name" : "xPhone", "price" : 799, "releaseDate" : ISODate("2011-05-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 }, "color" : [ "white", "black" ], "storage" : [ 64, 128, 256 ] },
	{ "_id" : 2, "name" : "xTablet", "price" : 899, "releaseDate" : ISODate("2011-09-01T00:00:00Z"), "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 }, "color" : [ "white", "black", "purple" ], "storage" : [ 128, 256, 512 ] },
	{ "_id" : 3, "name" : "SmartTablet", "price" : 899, "releaseDate" : ISODate("2015-01-14T00:00:00Z"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "blue" ], "storage" : [ 16, 64, 128 ] },
	{ "_id" : 4, "name" : "SmartPad", "price" : 699, "releaseDate" : ISODate("2020-05-14T00:00:00Z"), "spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256, 1024 ] },
	{ "_id" : 5, "name" : "SmartPhone", "price" : 599, "releaseDate" : ISODate("2022-09-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256 ] },
	{ "_id" : 6, "name" : "xWidget", "spec" : { "ram" : 64, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "black" ], "storage" : [ 1024 ] },
	{ "_id" : 7, "name" : "xReader","price": null, "spec" : { "ram" : 64, "screen" : 6.7, "cpu" : 3.66 }, "color" : [ "black", "white" ], "storage" : [ 128 ] }
])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5,
    '5': 6,
    '6': 7
  }
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
{
  _id: 6,
  name: 'xWidget',
  spec: {
    ram: 64,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'black'
  ],
  storage: [
    1024
  ]
}
{
  _id: 7,
  name: 'xReader',
  price: null,
  spec: {
    ram: 64,
    screen: 6.7,
    cpu: 3.66
  },
  color: [
    'black',
    'white'
  ],
  storage: [
    128
  ]
}
db.products.find({price:{$exists:true},name:1,price:1})
db.products.find({price:{$exists:true}},{name:1,price:1})
{
  _id: 1,
  name: 'xPhone',
  price: 799
}
{
  _id: 2,
  name: 'xTablet',
  price: 899
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599
}
{
  _id: 7,
  name: 'xReader',
  price: null
}
db.products.find({price:{$exists:false}},{name:1,price:1})
{
  _id: 6,
  name: 'xWidget'
}
db.products.drop()
true
show collections
db.products.insertMany([
	{ "_id" : 1, "name" : "xPhone", "price" : 799, "releaseDate" : ISODate("2011-05-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 }, "color" : [ "white", "black" ], "storage" : [ 64, 128, 256 ] },
	{ "_id" : 2, "name" : "xTablet", "price" : 899, "releaseDate" : ISODate("2011-09-01T00:00:00Z"), "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 }, "color" : [ "white", "black", "purple" ], "storage" : [ 128, 256, 512 ] },
	{ "_id" : 3, "name" : "SmartTablet", "price" : 899, "releaseDate" : ISODate("2015-01-14T00:00:00Z"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "blue" ], "storage" : [ 16, 64, 128 ] },
	{ "_id" : 4, "name" : "SmartPad", "price" : 699, "releaseDate" : ISODate("2020-05-14T00:00:00Z"), "spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256, 1024 ] },
	{ "_id" : 5, "name" : "SmartPhone", "price" : 599, "releaseDate" : ISODate("2022-09-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256 ] },
	{ "_id" : 6, "name" : "xWidget", "spec" : { "ram" : 64, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "black" ], "storage" : [ 1024 ] },
	{ "_id" : 7, "name" : "xReader","price": null, "spec" : { "ram" : 64, "screen" : 6.7, "cpu" : 3.66 }, "color" : [ "black", "white" ], "storage" : [ 128 ] }
])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5,
    '5': 6,
    '6': 7
  }
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
{
  _id: 6,
  name: 'xWidget',
  spec: {
    ram: 64,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'black'
  ],
  storage: [
    1024
  ]
}
{
  _id: 7,
  name: 'xReader',
  price: null,
  spec: {
    ram: 64,
    screen: 6.7,
    cpu: 3.66
  },
  color: [
    'black',
    'white'
  ],
  storage: [
    128
  ]
}
db.products.drop()
true
show collections
db.products.insertMany([
	{ "_id" : 1, "name" : "xPhone", "price" : "799", "releaseDate" : ISODate("2011-05-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 }, "color" : [ "white", "black" ], "storage" : [ 64, 128, 256 ] },
	{ "_id" : 2, "name" : "xTablet", "price" : NumberInt(899), "releaseDate" : ISODate("2011-09-01T00:00:00Z"), "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 }, "color" : [ "white", "black", "purple" ], "storage" : [ 128, 256, 512 ] },
	{ "_id" : 3, "name" : "SmartTablet", "price" : NumberLong(899), "releaseDate" : ISODate("2015-01-14T00:00:00Z"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "blue" ], "storage" : [ 16, 64, 128 ] },
	{ "_id" : 4, "name" : "SmartPad", "price" : [599, 699, 799], "releaseDate" : ISODate("2020-05-14T00:00:00Z"), "spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256, 1024 ] },
	{ "_id" : 5, "name" : "SmartPhone", "price" : ["599",699], "releaseDate" : ISODate("2022-09-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256 ] },
	{ "_id" : 6, "name" : "xWidget", "spec" : { "ram" : 64, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "black" ], "storage" : [ 1024 ] }
])
-- Warning: NumberLong: specifying a number as argument is deprecated and may lead to loss of precision, pass a string instead
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5,
    '5': 6
  }
}
show collections
products
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  price: '799',
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: [
    599,
    699,
    799
  ],
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: [
    '599',
    699
  ],
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
{
  _id: 6,
  name: 'xWidget',
  spec: {
    ram: 64,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'black'
  ],
  storage: [
    1024
  ]
}
db.products.find({
    price: {
        $type: "string"
    }
}, {
    name: 1,
    price: 1
})
{
  _id: 1,
  name: 'xPhone',
  price: '799'
}
{
  _id: 5,
  name: 'SmartPhone',
  price: [
    '599',
    699
  ]
}
db.products.find({
    price: {
        $type: 2
    }
}, {
    name: 1,
    price: 1
})
{
  _id: 1,
  name: 'xPhone',
  price: '799'
}
{
  _id: 5,
  name: 'SmartPhone',
  price: [
    '599',
    699
  ]
}
db.products.find({
    price: {
        $type: "number"
    }
}, {
    name: 1,
    price: 1
})
{
  _id: 2,
  name: 'xTablet',
  price: 899
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899
}
{
  _id: 4,
  name: 'SmartPad',
  price: [
    599,
    699,
    799
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: [
    '599',
    699
  ]
}
db.products.find({
    price: {
        $type: "array"
    }
}, {
    name: 1,
    price: 1
})
{
  _id: 4,
  name: 'SmartPad',
  price: [
    599,
    699,
    799
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: [
    '599',
    699
  ]
}
db.products.find({
    price: {
        $type: ["number","string"]
    }
}, {
    name: 1,
    price: 1
})
{
  _id: 1,
  name: 'xPhone',
  price: '799'
}
{
  _id: 2,
  name: 'xTablet',
  price: 899
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899
}
{
  _id: 4,
  name: 'SmartPad',
  price: [
    599,
    699,
    799
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: [
    '599',
    699
  ]
}
db.products.drop()
true
db.products.insertMany([
	{ "_id" : 1, "name" : "xPhone", "price" : 799, "releaseDate" : ISODate("2011-05-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 }, "color" : [ "white", "black" ], "storage" : [ 64, 128, 256 ] },
	{ "_id" : 2, "name" : "xTablet", "price" : 899, "releaseDate" : ISODate("2011-09-01T00:00:00Z"), "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 }, "color" : [ "white", "black", "purple" ], "storage" : [ 128, 256, 512 ] },
	{ "_id" : 3, "name" : "SmartTablet", "price" : 899, "releaseDate" : ISODate("2015-01-14T00:00:00Z"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "blue" ], "storage" : [ 16, 64, 128 ] },
	{ "_id" : 4, "name" : "SmartPad", "price" : 699, "releaseDate" : ISODate("2020-05-14T00:00:00Z"), "spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256, 1024 ] },
	{ "_id" : 5, "name" : "SmartPhone", "price" : 599, "releaseDate" : ISODate("2022-09-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256 ] },
	{ "_id" : 6, "name" : "xWidget", "spec" : { "ram" : 64, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "black" ], "storage" : [ 1024 ] }
])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5,
    '5': 6
  }
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
{
  _id: 6,
  name: 'xWidget',
  spec: {
    ram: 64,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'black'
  ],
  storage: [
    1024
  ]
}
db.products.find({
    color: {
        $size:2
    }
}, {
    name: 1,
    color: 1
})
{
  _id: 1,
  name: 'xPhone',
  color: [
    'white',
    'black'
  ]
}
db.products.drop()
true
db.products.insertMany([
	{ "_id" : 1, "name" : "xPhone", "price" : 799, "releaseDate" : ISODate("2011-05-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 6.5, "cpu" : 2.66 }, "color" : [ "white", "black" ], "storage" : [ 64, 128, 256 ] },
	{ "_id" : 2, "name" : "xTablet", "price" : 899, "releaseDate" : ISODate("2011-09-01T00:00:00Z"), "spec" : { "ram" : 16, "screen" : 9.5, "cpu" : 3.66 }, "color" : [ "white", "black", "purple" ], "storage" : [ 128, 256, 512 ] },
	{ "_id" : 3, "name" : "SmartTablet", "price" : 899, "releaseDate" : ISODate("2015-01-14T00:00:00Z"), "spec" : { "ram" : 12, "screen" : 9.7, "cpu" : 3.66 }, "color" : [ "blue" ], "storage" : [ 16, 64, 128 ] },
	{ "_id" : 4, "name" : "SmartPad", "price" : 699, "releaseDate" : ISODate("2020-05-14T00:00:00Z"), "spec" : { "ram" : 8, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256, 1024 ] },
	{ "_id" : 5, "name" : "SmartPhone", "price" : 599, "releaseDate" : ISODate("2022-09-14T00:00:00Z"), "spec" : { "ram" : 4, "screen" : 9.7, "cpu" : 1.66 }, "color" : [ "white", "orange", "gold", "gray" ], "storage" : [ 128, 256 ] }
])
{
  acknowledged: true,
  insertedIds: {
    '0': 1,
    '1': 2,
    '2': 3,
    '3': 4,
    '4': 5
  }
}
db.products.find()
{
  _id: 1,
  name: 'xPhone',
  price: 799,
  releaseDate: 2011-05-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 6.5,
    cpu: 2.66
  },
  color: [
    'white',
    'black'
  ],
  storage: [
    64,
    128,
    256
  ]
}
{
  _id: 2,
  name: 'xTablet',
  price: 899,
  releaseDate: 2011-09-01T00:00:00.000Z,
  spec: {
    ram: 16,
    screen: 9.5,
    cpu: 3.66
  },
  color: [
    'white',
    'black',
    'purple'
  ],
  storage: [
    128,
    256,
    512
  ]
}
{
  _id: 3,
  name: 'SmartTablet',
  price: 899,
  releaseDate: 2015-01-14T00:00:00.000Z,
  spec: {
    ram: 12,
    screen: 9.7,
    cpu: 3.66
  },
  color: [
    'blue'
  ],
  storage: [
    16,
    64,
    128
  ]
}
{
  _id: 4,
  name: 'SmartPad',
  price: 699,
  releaseDate: 2020-05-14T00:00:00.000Z,
  spec: {
    ram: 8,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256,
    1024
  ]
}
{
  _id: 5,
  name: 'SmartPhone',
  price: 599,
  releaseDate: 2022-09-14T00:00:00.000Z,
  spec: {
    ram: 4,
    screen: 9.7,
    cpu: 1.66
  },
  color: [
    'white',
    'orange',
    'gold',
    'gray'
  ],
  storage: [
    128,
    256
  ]
}
db.products.find({color:{$all:["black","white"]}},{name:1,price:1})
{
  _id: 1,
  name: 'xPhone',
  price: 799
}
{
  _id: 2,
  name: 'xTablet',
  price: 899
}
db.products.find({color:{$all:["black","white"]}},{name:1,color:1})
{
  _id: 1,
  name: 'xPhone',
  color: [
    'white',
    'black'
  ]
}
{
  _id: 2,
  name: 'xTablet',
  color: [
    'white',
    'black',
    'purple'
  ]
}
db.products.find({
    $and:[{
color:"black"},
          {color:"white"}]
}, {
    name: 1,
    color: 1
})
{
  _id: 1,
  name: 'xPhone',
  color: [
    'white',
    'black'
  ]
}
{
  _id: 2,
  name: 'xTablet',
  color: [
    'white',
    'black',
    'purple'
  ]
}
vit


