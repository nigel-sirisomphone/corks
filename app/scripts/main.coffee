window.corks =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new this.Views.PincollectionView({
      collection: new this.Collections.PinCollection()
    })


$(document).ready ->
  corks.init();


window.seed = [
    {
        "id": 0,
        "src": "/images/pins/olivia-munn-hottub.gif",
        "title": "Ea consectetur reprehenderit sunt reprehenderit aute nulla officia occaecat.",
        "type": "image"
    },
    {
        "id": 1,
        "src": "/images/pins/oh-yeah-olivia.gif",
        "title": "Sunt tempor nisi ipsum nostrud minim cillum.",
        "type": "image"
    },
    {
        "id": 2,
        "src": "/images/pins/hot-filo-girl.jpg",
        "title": "Lorem eu in reprehenderit sit consequat nulla commodo.",
        "type": "image"
    },
    {
        "id": 3,
        "src": "/images/pins/nashvilled.jpg",
        "title": "Incididunt proident minim esse id.",
        "type": "image"
    },
    {
        "id": 4,
        "src": "/images/pins/bok-choy-recipe-3.jpg",
        "title": "Aliqua duis eiusmod do ex occaecat ullamco velit tempor tempor id do.",
        "type": "image"
    },
    {
        "id": 5,
        "src": "/images/pins/kieran_retouched.jpg",
        "title": "Excepteur in id pariatur mollit elit do sint ad do id exercitation proident excepteur.",
        "type": "image"
    },
    {
        "id": 6,
        "src": "http://placehold.it/256x256",
        "title": "Ut nulla et cillum fugiat enim in.",
        "type": "image"
    },
    {
        "id": 7,
        "src": "http://placehold.it/256x256",
        "title": "Nisi eu minim dolore aute do.",
        "type": "image"
    },
    {
        "id": 8,
        "src": "http://placehold.it/256x256",
        "title": "Anim laboris magna eiusmod do non esse nulla veniam.",
        "type": "image"
    },
    {
        "id": 9,
        "src": "http://placehold.it/256x256",
        "title": "Consequat consequat aute Lorem pariatur ex in nostrud mollit laborum Lorem in.",
        "type": "image"
    },
    {
        "id": 10,
        "src": "http://placehold.it/256x256",
        "title": "Non reprehenderit ipsum magna enim aute id culpa adipisicing magna eu nulla cillum.",
        "type": "image"
    },
    {
        "id": 11,
        "src": "http://placehold.it/256x256",
        "title": "Incididunt ullamco ex nisi consectetur nulla anim quis.",
        "type": "image"
    },
    {
        "id": 12,
        "src": "http://placehold.it/256x256",
        "title": "Aliquip amet dolore mollit quis ex ex veniam incididunt officia dolor.",
        "type": "image"
    },
    {
        "id": 13,
        "src": "http://placehold.it/256x256",
        "title": "Qui irure ipsum aute officia et eiusmod fugiat ullamco.",
        "type": "image"
    },
    {
        "id": 14,
        "src": "http://placehold.it/256x256",
        "title": "Et amet commodo aliquip et eiusmod tempor labore nisi quis ut laborum elit ipsum elit.",
        "type": "image"
    }
]