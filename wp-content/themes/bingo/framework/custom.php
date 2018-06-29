
<?php 
   /********************************************
               Change theme option name
   ********************************************/
 add_filter('cs_framework_settings','change_theme_option_name');
 function change_theme_option_name(array $settings){
   $settings=[
  'menu_title'      => 'Bingo Option',
  'menu_type'       => 'menu', // menu, submenu, options, theme, etc.
  'menu_slug'       => 'cs-framework',
  'ajax_save'       => false,
  'show_reset_all'  => false,
  'framework_title' => 'Codestar Framework <small>by Codestar</small>',
];
 return $settings;
}
/***********************************************
                 Add Filed
************************************************/

// framework options filter example
function bingo_theme_option( $options ) {
  $options      = []; // remove old options

 /******************************************
             Theme setting
  *********************************************/
 $options[]     =[
    'name'      => 'settings',
    'title'     => 'Theme Settings',
    'icon'      => 'fa fa-star',
    'fields'    => [
      [
        'id'    => 'preloader',
        'type'  => 'switcher',
        'title' => 'Pre loader',
        'default' => true,
      ],
       [
        'id'    => 'breadcum',
        'type'  => 'Background',
        'title' => 'Breadum image or color',
      ],

      [
        'id'    => 'widget_switcher',
        'type'  => 'switcher',
        'title' => 'Display Footer Widget',
        'default' => false,
      ],

    ]

 ];


  /******************************************
               Header
  *********************************************/
  $options[]    = [
    'name'      => 'Header',
    'title'     => 'Header',
    'icon'      => 'fa fa-heart',
    'fields'    => [
      [
        'id'    => 'logo_type',
        'type'  => 'switcher',
        'title' => 'Select Logo type',
        'default' => true,
      ], 
       [
        'id'    => 'logo_image',
        'type'  => 'image',
        'title' => 'Upload Logo image',
        'dependency' => ['logo_type', '==', 'true'],
      ],
        [
        'id'    => 'logo_image1',
        'type'  => 'image',
        'title' => 'Upload Logo image',
        'dependency' => ['logo_type', '==', 'true'],
      ],
      [
        'id'    => 'logo_text',
        'type'  => 'text',
        'title' => 'Enter logo text',
         'dependency' => ['logo_type', '==', 'false'],
      ],

  ] //End Fields
 ]; //end option

 /******************************************
            We AOffer Area
  *********************************************/
 $options[]  =[
  'name'      => 'front-page',
  'title'     => 'Front Page',
  'icon'      => 'fa fa-heart',
  'sections'    => [  
  [
  'name'      => 'Offer',
  'title'     => 'We Offer',
  'icon'      => 'fa fa-heart',
  'fields'    => [
    [
      'id'    => 'Offer_heading_title',
      'type'  => 'text',
      'title' => 'Offer Heading Title',
    ],
      [
      'id'    => 'Offer_heading_subtitle',
      'type'  => 'text',
      'title' => 'Offer Subtitle',
    ],
    [
      'id'    => 'we_offer_image',
      'type'  => 'image',
      'title' => 'Upload Image',
    ],

      /**************************************button group*************************/
       [
      'id'              => 'We_offer_group',
      'type'            => 'group',
      'title'           => 'We Offer Items',
      'button_title'    => 'Add New',
      'accordion_title' => 'Add New Items',
      'fields'          => [
        [
          'id'    => 'Offer_icon',
          'type'  => 'text',
          'title' => 'we offer Item Icon',
        ],
        [
          'id'    => 'Offer_items_title',
          'type'  => 'text',
          'title' => 'Type OfferIcons Title',
        ],
        [
          'id'    => 'Offer_icons_text',
          'type'  => 'textarea',
          'title' => 'Offer Icons Text',
        ], 
      ], // end group fields
    ], //end group
  ] //End fields
],
 /******************************************
           Bingo Agency 
  *********************************************/
[
  'name'      => 'Bingo_Agency',
  'title'     => 'Bingo Agency',
  'icon'      => 'fa fa-heart',
  'fields'    => [
    [
      'id'    => 'agency_title',
      'type'  => 'text',
      'title' => 'Agency Heading Title',
    ],
      [
      'id'    => 'agency_subtitle',
      'type'  => 'textarea',
      'title' => 'Agency Subtitle',
    ],
    [
      'id'    => 'Agency_image',
      'type'  => 'image',
      'title' => 'Upload Image',
    ],

      /**************************************button group*************************/
       [
      'id'              => 'Agency_group',
      'type'            => 'group',
      'title'           => 'Agency Items',
      'button_title'    => 'Add New',
      'accordion_title' => 'Add New Items',
      'fields'          => [
        [
          'id'    => 'agency_text',
          'type'  => 'textarea',
          'title' => 'agency Icons Text',
        ], 
      ], // end group fields
    ], //end group
    [
      'id'    => 'learn_more',
      'type'  => 'text',
      'title' => 'Agency Lean More',
    ],
  ] //End fields
],
 /******************************************************
               Home contact section
 *********************************************************/
[
  'name'      => 'Home_contact',
  'title'     => 'Home Contact',
  'icon'      => 'fa fa-heart',
  'fields'    => [
       [
       'id'           => 'contact_background',
       'type'         => 'Background',
       'title'        => 'Background Field',
      ], 
      [
       'id'           => 'Home_c_title',
       'type'         => 'text',
       'title'        => 'Home Contact Title',
      ],
       [
       'id'           => 'Home_c_details',
       'type'         => 'textarea',
       'title'        => 'Home Contact Text',
      ], 
        [
       'id'           => 'Home_c_url',
       'type'         => 'text',
       'title'        => 'Home Contact Button Url',
      ],
  ]
],
 /******************************************************
              Award Winning Agency
 *********************************************************/
[
  'name'      => 'award_winding_agencey',
  'title'     => 'Award-Winning Agency',
  'icon'      => 'fa fa-heart',
  'fields'    => [
       [
       'id'           => 'award_background',
       'type'         => 'Background',
       'title'        => 'Background Field',
      ], 
      [
       'id'           => 'award_c_title',
       'type'         => 'text',
       'title'        => 'Award Title',
      ],
       [
       'id'           => 'Award_c_details',
       'type'         => 'textarea',
       'title'        => 'Award Text',
      ], 
       //////////////////    Award Counter Group        //////////////////////
      [
      'id'              => 'counter_group',
      'type'            => 'group',
      'title'           => 'Counter Items',
      'button_title'    => 'Add New',
      'accordion_title' => 'Add New Items',
      'fields'          => [
        [
          'id'    => 'counter_icon',
          'type'  => 'text',
          'title' => 'Counter Icon Name',
        ], 
          [
          'id'    => 'counter_number',
          'type'  => 'text',
          'title' => 'Counter Number',
        ],
        [
          'id'    => 'counter_Details',
          'type'  => 'text',
          'title' => 'Counter Details',
        ], 
      ], // end group fields
    ], //end group
  ]
],
   /******************************************
              Blog
  *********************************************/
[
  'name'      => 'blog',
  'title'     => 'Blog',
  'icon'      => 'fa fa-heart',
  'fields'    => [
     [
      'id'    => 'blog_title',
      'type'  => 'text',
      'title' => 'Type Here your BLog title',
    ],
    [
      'id'    => 'blog_subtitle',
      'type'  => 'text',
      'title' => 'Type Here your BLog subtitle',
    ],
  ]
],
],

];



/*************************************************
               About page
***************************************************/
 $options[]     =[
  'name'      => 'AboutPage',
  'title'     => 'About Page',
  'icon'      => 'fa fa-heart',
  'sections'    => [
  	[
    'name'      => 'About',
    'title'     => 'About Page',
    'icon'      => 'fa fa-star',
    'fields'    => [
       [
        'id'    => 'about_first_section_title',
        'type'  => 'text',
        'title' => 'About First Section Title',
      ],
      [
        'id'    => 'about_first_section_detials',
        'type'  => 'textarea',
        'title' => 'About details',
      ],
       [
        'id'    => 'about_first_section_imae',
        'type'  => 'image',
        'title' => 'About Image',
      ],

    ]

 ],

 /******** Mission*********/
    [
    'name'      => 'Mission',
    'title'     => 'Mission',
    'icon'      => 'fa fa-star',
    'fields'    => [
          [
      'id'              => 'mission_group',
      'type'            => 'group',
      'title'           => 'Counter Items',
      'button_title'    => 'Add New',
      'accordion_title' => 'Add New Items',
      'fields'          => [
        [
        'id'    => 'Mission',
        'type'  => 'text',
        'title' => 'Enter Mission Title',
          ], 
          [
          'id'    => 'mission_text',
          'type'  => 'textarea',
          'title' => 'Enter Mission Details',
        ],
        [
          'id'    => 'Misson_image',
          'type'  => 'image',
          'title' => 'Upload Mission Photo',
        ], 
      ], // end group fields
    ], //end group
    
    
    ]
 ],

    /*************************Video area ***************/
 /******** Mission*********/
 [
    'name'      => 'Video',
    'title'     => 'Video Area',
    'icon'      => 'fa fa-star',
    'fields'    => [
        [
        'id'    => 'Video_title',
        'type'  => 'text',
        'title' => 'Video area title',
          ], 
          [
          'id'    => 'video_details',
          'type'  => 'textarea',
          'title' => 'Enter Video Details',
        ],
        [
          'id'    => 'video_source',
          'type'  => 'text',
          'title' => 'Enter Video url only',
        ], 
     
    
    
    ]
 ],
 /***************************************
            Video Bottom area
 *******************************************/
 [
  'name'      => 'Video_bottom',
  'title'     => 'Video bottom section',
  'icon'      => 'fa fa-heart',
  'fields'    => [
     [
      'id'    => 'video_bottom_secion_bg',
      'type'  => 'Background',
      'title' => 'Upload Background Image',
    ],
      [
      'id'    => 'video_bottom_section_details',
      'type'  => 'textarea',
      'title' => 'video bottm section description',
    ],
  ]
],
 /***************************************
           About Gellery
 *******************************************/
   [
  'name'      => 'About_Gellery',
  'title'     => 'About Gallery',
  'icon'      => 'fa fa-heart',
  'fields'    => [
        [
        'id'    => 'gellery_title',
        'type'  => 'text',
        'title' => 'Gallery area title',
          ], 
          [
          'id'    => 'Gallery_details',
          'type'  => 'textarea',
          'title' => 'Enter Gekkery Details',
        ],
	     [
	      'id'              => 'About_gellery_img',
	      'type'            => 'group',
	      'title'           => 'Gallery Image Items',
	      'button_title'    => 'Add New',
	      'accordion_title' => 'Add New Items',
	      'fields'          => [
	        [
	        'id'    => 'Image_gellery',
	        'type'  => 'image',
	        'title' => 'upload gallery image',
	          ], 
	      ], // end group fields
        ], //end group


  ]
],
 /******************************************
              Team
  *********************************************/
  [
  'name'      => 'Team',
  'title'     => 'Team',
  'icon'      => 'fa fa-heart',
  'fields'    =>  [
  	 [
    'id'    => 'Team_title',
    'type'  => 'text',
    'title' => 'Team area title',
      ], 
      [
      'id'    => 'Team_details',
      'type'  => 'textarea',
      'title' => 'Enter Team Details',
      ],
        [
	      'id'              => 'Team_img',
	      'type'            => 'group',
	      'title'           => 'Team Image Items',
	      'button_title'    => 'Add New',
	      'accordion_title' => 'Add New Items',
	      'fields'          => [
	        [
	        'id'    => 'Team_image',
	        'type'  => 'image',
	        'title' => 'upload Team image',
	         ], 
	         [
	        'id'    => 'team_name',
	        'type'  => 'text',
	        'title' => 'Enter team Member name',
	         ],
	         [
	        'id'    => 'team_profession',
	        'type'  => 'text',
	        'title' => 'Enter team Member profession',
	         ],
	         [
	         'id'    => 'team_info',
	        'type'  => 'textarea',
	        'title' => 'Enter team Member details',
	         ],
	         [
	         'id'    => 'facebook',
	        'type'  => 'text',
	        'title' => 'Facebook Url',
	         ],
	         [
	        'id'    => 'twitter',
	        'type'  => 'text',
	        'title' => 'Twitter Url',
	         ],
	         [
	        'id'    => 'google',
	        'type'  => 'text',
	        'title' => 'google Url',
	         ],
	         [
	        'id'    => 'dribble',
	        'type'  => 'text',
	        'title' => 'Dribbble Url',
	         ],


	      ], // end group fields

        ], //end group
 ]
],
]
];
  /***************************************** 
               Service Page
  ******************************************/
  $options[]  =[
  'name'      => 'Service_page',
  'title'     => 'Service Page',
  'icon'      => 'fa fa-heart',
  'sections'    => [  
  [

  'name'      => 'Service',
  'title'     => 'Service Heading ',
  'icon'      => 'fa fa-heart',
  'fields'    =>  [
      [
      'id'    => 'service_title',
      'type'  => 'text',
      'title' => 'Enter service Title',
    ],
    [
      'id'    => 'service_subtitle',
      'type'  => 'textarea',
      'title' => 'Enter service Subtitle',
    ],
  ]
],             
[
  'name'      => 'skill',
  'title'     => 'Skill ',
  'icon'      => 'fa fa-heart',
  'fields'    =>  [
      [
      'id'    => 'Skill_title',
      'type'  => 'text',
      'title' => 'Enter Skill Title',
    ],
    [
      'id'    => 'Skill_subtitle',
      'type'  => 'textarea',
      'title' => 'Enter Skill Subtitle',
    ],
    [
      'id'    => 'descript_heading',
      'type'  => 'text',
      'title' => 'Service Descript Heading',
    ],
    [
      'id'    => 'service_des_text',
      'type'  => 'textarea',
      'title' => 'Service Descript text',
    ],
    [
      'id'    => 'service_des_link',
      'type'  => 'text',
      'title' => 'Service Descript link',
    ],
     [
        'id'              => 'skill_lavel',
        'type'            => 'group',
        'title'           => 'Skill Lavel',
        'button_title'    => 'Add New',
        'accordion_title' => 'Add New Items',
        'fields'          => [
          [
          'id'    => 'Skill_name',
          'type'  => 'text',
          'title' => 'Type Skill Text',
            ], 
           [
          'id'    => 'Skill_parsent',
          'type'  => 'text',
          'title' => 'Type Skill Text',
            ], 
        ], // end group fields
        ], //end group
  ]
],
[
  'name'      => 'Sercice_client',
  'title'     => 'Client Gallery',
  'icon'      => 'fa fa-heart',
  'fields'    => [
       [
        'id'              => 'client_img',
        'type'            => 'group',
        'title'           => 'Client Image Items',
        'button_title'    => 'Add New',
        'accordion_title' => 'Add New Items',
        'fields'          => [
          [
          'id'    => 'Client_Gellery',
          'type'  => 'image',
          'title' => 'upload Client image',
            ], 
        ], // end group fields
        ], //end group


  ]
],
 /****************************** Pricing *********************/
[
  'name'      => 'Pricing',
  'title'     => 'Pricing Details',
  'icon'      => 'fa fa-heart',
  'fields'    => [
     [
      'id'    => 'pricing_title',
      'type'  => 'text',
      'title' => 'Enter Pricing Title',
    ],
      [
      'id'    => 'pricing_subtitle',
      'type'  => 'textarea',
      'title' => 'Enter Pricing SubTitle',
    ],
    [
      'id'    => 'pricing_bg',
      'type'  => 'Background',
      'title' => 'Upload Princing Background Image',
    ],
  ]
], 
   /*****************************************
           Pricing Package 
   ***************************************/
[
  'name'      => 'Pricing_pack',
  'title'     => 'Pricing Package',
  'icon'      => 'fa fa-heart',
  'fields'    => [

       [
        'id'              => 'pricing_package',
        'type'            => 'group',
        'title'           => 'Prcing Package Items',
        'button_title'    => 'Add New',
        'accordion_title' => 'Add New Items',
        'fields'          => [

           [
          'id'    => 'Pricing_package_name',
          'type'  => 'text',
          'title' => 'Pricing Package name',
          ], 
          [
          'id'    => 'Pricing_package_price',
          'type'  => 'text',
          'title' => 'Pricing Package Price',
          ],
         [
          'id'    => 'Pricing_package_title',
          'type'  => 'text',
          'title' => 'Pricing Package title',
          ],
          [
          'id'    => 'Pricing_package_item',
          'type'  => 'textarea',
          'title' => 'Pricing Package item',
          ],
          [
          'id'    => 'Pricing_package_signup',
          'type'  => 'text',
          'title' => 'Pricing Package signup link',
          ],
        ], // end group fields
        ], //end group
  ]
],
]
];
 /**********************************************
           Portfolio page
 ***************************************************/
  $options[]    =[
  'name'      => 'portfolio',
  'title'     => 'Portfolio Page',
  'icon'      => 'fa fa-heart',
  'fields'    => [
    [
      'id'    => 'portfolio_title',
      'type'  => 'text',
      'title' => 'Enter Portfolio Title',
    ],
    [
      'id'    => 'portfolio_subtitle',
      'type'  => 'textarea',
      'title' => 'Enter Portfolio Subtitle',
    ],
  ]
];
 /**********************************************
           Contact Page
 ***************************************************/
  $options[]    =[
  'name'      => 'contact',
  'title'     => 'Contact Page',
  'icon'      => 'fa fa-heart',
  'sections'    => [
  [
  'name'      => 'contact_heading',
  'title'     => 'Contact Heading',
  'icon'      => 'fa fa-heart',
  'fields'    => [
    [
      'id'    => 'Contact_title',
      'type'  => 'text',
      'title' => 'Enter Contact Title',
    ],
    [
      'id'    => 'Contact_subtitle',
      'type'  => 'textarea',
      'title' => 'Enter Contact Subtitle',
    ],
  ]
],
[
  'name'      => 'contact_details',
  'title'     => 'Contact Details',
  'icon'      => 'fa fa-heart',
  'fields'    => [
    [
      'id'    => 'Contact_dtitle',
      'type'  => 'text',
      'title' => 'Enter Contact Title',
    ],
    [
      'id'    => 'Contact_dsubtitle',
      'type'  => 'textarea',
      'title' => 'Enter Contact Subtitle',
    ],
    [
      'id'    => 'Contact_description',
      'type'  => 'textarea',
      'title' => 'Enter Contact description',
    ],
           [
        'id'              => 'contact_d',
        'type'            => 'group',
        'title'           => 'Contact Social',
        'button_title'    => 'Add New',
        'accordion_title' => 'Add New Items',
        'fields'          => [

           [
          'id'    => 'social_name',
          'type'  => 'text',
          'title' => 'Enter Social Name',
          ], 
          [
          'id'    => 'Enter_Social_Link',
          'type'  => 'text',
          'title' => 'Enter Social Link',
          ],
        ], // end group fields
        ], //end group
  ]
],
]
];
   /******************************************
              Foooter
  *********************************************/
  $options[]    =[
  'name'      => 'Footer',
  'title'     => 'Footer Details',
  'icon'      => 'fa fa-heart',
  'fields'    => array(
    array(
      'id'    => 'footer_text',
      'type'  => 'textarea',
      'title' => 'Enter html block shortcode here',
    ),
  )
];
   /******************************************
             Backup
  *********************************************/
  $options[]    =[
  'name'      => 'Backup',
  'title'     => 'Export Data',
  'icon'      => 'fa fa-heart',
  'fields'    => array(
    array(
      'id'    => 'backup_data',
      'type'  => 'backup',
      'title' => 'Export Data for Backup',
    ),
  )
];
  return $options;
}
add_filter( 'cs_framework_options', 'bingo_theme_option' );


?>