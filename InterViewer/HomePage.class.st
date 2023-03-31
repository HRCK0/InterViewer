"
uOttawa Project
"
Class {
	#name : #HomePage,
	#superclass : #WAComponent,
	#category : #InterViewer
}

{ #category : #initialization }
HomePage class >> handlerName [
	^ 'InterViewer'
]

{ #category : #initialization }
HomePage class >> initialize [
	WAAdmin register: self asApplicationAt: self handlerName
]

{ #category : #initialization }
HomePage >> featuredJobs [

	^OrderedCollection new
		add: 1;
		add: 1;
				add: 1;
		yourself
]

{ #category : #initialization }
HomePage >> initialize [ 
	super initialize.
	
]

{ #category : #initialization }
HomePage >> renderContentOn: html [

	(html tag: 'nav')
		class: 'navBar';
		with: [ 
			html image
				url:
					'https://images.emojiterra.com/google/noto-emoji/v2.034/512px/1f50d.png';
				width: '40px';
				style: 'margin-left: 15px'.
			html div
				class: 'logo';
				with: [ html anchor with: [ html header: 'iNTERvIEWER' ] ] ].
	html form
		class: 'nav-links';
		with: [ 
			html label with: 'Keywords:'.
			html textInput
				id: 'keywords';
				name: 'keywords'.
			html label with: 'Locations:'.
			html textInput
				id: 'locations';
				name: 'locations'.
			html submitButton value: 'Search' ].
	html div
		id: 'wholesite';
		with: [ 
			html header
				style: 'text-align: center;';
				with: 'Featured Jobs:'.
			html div
				class: 'featured-jobs';
				with: [ 
					self featuredJobs do: [ :eachJob | 
							self renderFeaturedJob: eachJob in: html ] ] ]
]

{ #category : #initialization }
HomePage >> renderFeaturedJob: eachJob in: html [

	"<div  class=""job"">
  <div class=""company-logo"">
    <img src=""https://cdn.freebiesupply.com/images/large/2x/starbucks-logo-png-transparent.png"" width=""110px"" alt=""Starbucks Logo"">
  </div>
  <div>
    <h3>Software Developer</h3>
    <h4>Company Name:</h4><p>Starbucks</p>
    <h4>Location:</h4><p>Ottawa</p>
  </div>
  <div>
    <h4>Description:</h4>
    <p style=""padding-bottom: 5px;"">This job creates the Starbucks Experience for our customers by providing customers with prompt service, quality beverages and products, and maintaining a clean and comfortable store environment. Models and acts in accordance with Starbucks guiding principles.</p>
    <a href=""#"">Apply Now</a>
  </div>
</div>
</div>
"

	html div
		class: 'job';
		with: [ 
			html div
				class: 'company-logo';
				with: [ 
					html image
						url:
							'https://cdn.freebiesupply.com/images/large/2x/starbucks-logo-png-transparent.png';
						altText: 'Starbucks Logo';
						width: '110px'].
				html div with: [  
					html div with: [ 
						html heading
							level3;
							with: [ html text: 'Software Developer' ].
						html heading
							level4;
							with: [ html text: 'Company Name: ' ].
						html paragraph with: [ html text: 'Starbucks' ].
						html heading
							level4;
							with: [ html text: 'Location: ' ].
						html paragraph with: [ html text: 'Ottawa' ] ] ].
			html div with: [ 
				html heading
					level4;
					with: [ html text: 'Description ' ].
				html paragraph
					style: 'padding-bottom: 5px;';
					with: [ 
						html text:
								'This job creates the Starbucks Experience for our customers by providing customers with prompt service, quality beverages and products, and maintaining a clean and comfortable store environment. Models and acts in accordance with Starbucks guiding principles.' ] ].
			html anchor
				callback: [  ];
				with: 'Apply now']
]

{ #category : #initialization }
HomePage >> style [

	"CSS File"

	^ '
  
  /* W3Schools helped with ideas and some code */

  input[type="text"] {
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    width: 250px;
    margin-bottom: 10px;
  }
  
  #wholesite {
    padding-left: 3%;
    padding-right: 3%;  
    padding-bottom: 3%;
  }

  
  /* Body styles */
  body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    color: #333;
  }
  
  /* Header styles */
  h1 {
    font-size: 2em;
    text-align: center;
    margin-top: 20px;
  }
  
  /* Form styles */
  form {
    margin: 20px 100;
    text-align: center;
  }
  
  label {
    display: block;
    margin: 10px 0;
    font-weight: bold;
  }
  
  input[type="text"],
  input[type="submit"] {
    display: block;
    margin: 10px auto;
    padding: 5px 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  
  input[type="submit"] {
    background-color: #008CBA;
    color: #fff;
    cursor: pointer;
  }
  
  /* Featured jobs styles */
  h2 {
    font-size: 1.5em;
    margin: 20px 0;
  }
  
  .featured-jobs {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    grid-gap: 20px;
    list-style: none;
    padding: 0;
  }
  
  .job {
    background-color: #f1f1f1;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    border: 1px solid #008CBA;
  }
  
  .company-logo{
    float: right;
  }
  
  
  h3 {
    margin-bottom: 5px;
  }
  
  p {
    margin-bottom: 10px;
  }
  
  a {
    display: block;
    margin: 10px auto;
    padding: 5px 10px;
    border: 1px solid #008CBA;
    border-radius: 3px;
    color: #008CBA;
    text-align: center;
    text-decoration: none;
  }
  
  a:hover {
    background-color: #008CBA;
    color: #fff;
  }
  
  nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #008CBA;
    color: #fff;
    padding: 10px;
  }
  
  nav a {
    color: #fff;
    text-decoration: none;
  }
  
  .logo a {
    font-size: 1.5em;
    font-weight: bold;
  }
  
  .nav-links {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  
  .nav-links li {
    margin: 0 10px;
    list-style: none;
  }
  
  .nav-links a {
    text-decoration: none;
    color: #fff;
    font-size: 1.1em;
  }
  
  .nav-links a:hover {
    border-bottom: 2px solid #fff;
  }
'
]
