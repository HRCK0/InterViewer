Class {
	#name : #IVJobsMock,
	#superclass : #Object,
	#category : #InterViewer
}

{ #category : #'as yet unclassified' }
IVJobsMock >> generateJobs [

	| coll |
	coll := OrderedCollection new.
	coll
		add: (IVJob new
				 id: 1;
				 jobtitle: 'Software developer';
				 companyname: 'Mitel';
				 location: 'Ottawa, Kanata';
				 description: 'Looking for an experienced software developer';
				 logo: 'https://cdn.freebiesupply.com/images/large/2x/starbucks-logo-png-transparent.png';
				 link: 'https://www.youtube.com/';
				 yourself);
		add: (IVJob new
				 id: 2;
				 jobtitle: 'Software tester';
				 companyname: 'IBM';
				 location: 'Ottawa/Downtown';
				 description: 'description';
				 logo: 'https://cdn.freebiesupply.com/images/large/2x/starbucks-logo-png-transparent.png';
				 link: 'https://www.youtube.com/';
				 yourself);
		add: (IVJob new
				 id: 3;
				 jobtitle: 'Network engineer';
				 companyname: 'TELNA';
				 location: 'Toronto';
				 description: 'Talented network ';
				 logo: 'https://cdn.freebiesupply.com/images/large/2x/starbucks-logo-png-transparent.png';
				 link: 'https://www.youtube.com/';
				 yourself).
				
	^coll
]
