Class {
	#name : #IVJobsMock,
	#superclass : #Object,
	#category : #InterViewer
}

{ #category : #'as yet unclassified' }
IVJobsMock >> demoJobs [

	| coll |
	coll := OrderedCollection new.
	coll
		add: (IVJob new
				 id: 1;
				 jobtitle: 'Software Engineer';
				 companyname: 'IBM';
				 location: 'New York';
				 description: 'IBM is looking for a highly skilled software engineer to join our team. In this role, you will be responsible for designing, developing, testing, and deploying software solutions for a variety of projects. You will work closely with other software engineers, project managers, and clients to ensure that our software meets the highest quality standards and is delivered on time and on budget.';
				 logo: 'https://180dc.org/wp-content/uploads/2022/04/ibm-logo-.png';
				 link: 'https://www.ibm.com/careers/us-en/search/';
				 yourself);
add: (IVJob new
				 id: 2;
				 jobtitle: 'DevOps Engineer';
				 companyname: 'Shopify';
				 location: 'Ottawa';
				 description: 'Shopify is looking for an experienced DevOps Engineer to join our team. In this role, you will work closely with our development teams to build and maintain the infrastructure and tooling necessary to support our growing platform. You will also be responsible for ensuring that our systems are highly available, scalable, and secure.';
				 logo: 'https://companieslogo.com/img/orig/SHOP-020ea41a.png?t=1633439432';
				 link: 'https://www.shopify.com/careers';
				 yourself);
add: (IVJob new
				 id: 3;
				 jobtitle: 'QA Engineer';
				 companyname: 'Google Inc';
				 location: 'Moscow';
				 description: 'Google is seeking a highly motivated and experienced QA Engineer to join our team. In this role, you will be responsible for designing and executing manual and automated tests, collaborating with developers to identify and resolve issues, and ensuring that our products meet the highest quality standards.';
				 logo: 'https://companieslogo.com/img/orig/GOOG-0ed88f7c.png?t=1633218227';
				 link: 'https://careers.google.com/';
				 yourself);
add: (IVJob new
				 id: 4;
				 jobtitle: 'R&D Developer';
				 companyname: 'Twitter';
				 location: 'Berlin';
				 description: 'Twitter is seeking a highly motivated and experienced R&D Developer to join our team. In this role, you will work on developing innovative products and features, collaborating with cross-functional teams to identify and solve complex problems, and exploring new technologies and platforms to push the boundaries of what''s possible on the Twitter platform.';
				 logo: 'https://www.wellybox.com/wp-content/uploads/2023/02/pngkey.com-twitter-logo-png-transparent-27646.png';
				 link: 'https://careers.twitter.com/en';
				 yourself);
add: (IVJob new
				 id: 5;
				 jobtitle: 'Front-End Developer';
				 companyname: 'Mitel Networks';
				 location: 'Ottawa';
				 description: 'Mitel Networks is seeking a highly motivated and experienced Front-End Developer to join our team. In this role, you will work on developing and enhancing web-based applications and user interfaces, collaborating with cross-functional teams to identify and solve complex problems, and ensuring that our products meet the highest quality standards.';
				 logo: 'https://play-lh.googleusercontent.com/slU4iqukMe4vjOqnbYFuRW8AD1Ipp5nsKamS0K7tNCutZXLu_M-yi11Ep2pe2ZLixFk';
				 link: 'https://www.mitel.com/careers';
				 yourself);
add: (IVJob new
				 id: 6;
				 jobtitle: 'Back-End Developer';
				 companyname: 'Microsoft';
				 location: 'Redmond';
				 description: 'Microsoft is seeking a highly motivated and experienced Back-End Developer to join our team. In this role, you will work on developing and maintaining the back-end systems that power our web-based applications, collaborating with cross-functional teams to identify and solve complex problems, and ensuring that our products meet the highest quality standards.';
				 logo: 'https://companieslogo.com/img/orig/MSFT-a203b22d.png?t=1633073277';
				 link: 'https://careers.microsoft.com/us/en';
				 yourself);
add: (IVJob new
				 id: 7;
				 jobtitle: 'Software Developer';
				 companyname: 'Yahoo';
				 location: 'Sunnyvale';
				 description: 'Yahoo is seeking a highly motivated and experienced Software Developer to join our team. In this role, you will work on developing and maintaining our web-based applications, collaborating with cross-functional teams to identify and solve complex problems, and ensuring that our products meet the highest quality standards.';
				 logo: 'https://i.pinimg.com/originals/a1/cf/67/a1cf6782e1d737865bdeca4fec7fc5fd.png';
				 link: 'https://www.yahooinc.com/careers/';
				 yourself);
add: (IVJob new
				 id: 8;
				 jobtitle: 'Web Designer';
				 companyname: 'Apple Inc';
				 location: 'Cupertino';
				 description: 'Apple is seeking a highly motivated and experienced Web Designer to join our team. In this role, you will be responsible for creating visually stunning and engaging web designs for our products and services. You will work closely with cross-functional teams to understand user needs, design solutions that meet those needs, and ensure that our web designs meet the highest standards of quality and user experience.';
				 logo: 'https://companieslogo.com/img/orig/AAPL-bf1a4314.png?t=1632720960';
				 link: 'https://www.apple.com/careers/us/';
				 yourself);
add: (IVJob new
				 id: 9;
				 jobtitle: 'App Developer';
				 companyname: 'Mitel';
				 location: 'Shenzhen';
				 description: 'Huawei is seeking a highly motivated and experienced App Developer to join our team. In this role, you will be responsible for designing and developing mobile applications for our customers, collaborating with cross-functional teams to identify and solve complex problems, and ensuring that our products meet the highest quality standards.';
				 logo: 'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Huawei_Standard_logo.svg/2016px-Huawei_Standard_logo.svg.png';
				 link: 'https://career.huawei.com/reccampportal/portal5/index.html';
				 yourself).
	^coll
]
