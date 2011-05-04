Category.delete_all
["Java", "Ruby", "C++", "网页设计", "敏捷开发"].each do |cm|
  Category.create(:name => cm, :description => "有关#{cm}的一些图书")
end


Book.delete_all
Book.create(:title => 'Java编程思想:第3版',
  :description =>
    %{<p>
        从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书作者有多年的教学经验，对C、C++、Java语言都有独到、深入的理解。因此他非常了解如何教授Java语言这门课程，也非常明白语言教学中的难点及人们的困惑。作者以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念，精心选取“对读者理解Java语言来说最为重要”的部分编写成书。同时又在随书光盘中提供了大量参考材料—这也是本书绝对物超所值的地方。　　随书光盘没有包含本书的源代码（可以从支持网站www.MindView.net免费下载），而是提供了大量作者讲授的讨论课内容及本书的前2版内容。　　本书内容丰富—从Java的基础语法到最高级特性，适合各层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言及Java语言的绝佳教材。
      </p>},
  :image =>   '/images/books/thinkinjava.jpg',
  :author => "Bruce Eckel",
  :publisher => "机械工业出版社",
  :publish_date => '2006-05-5',
  :price => 95.00,
  :page_num => 756,
  :category => Category.find_by_name('Java'))
#. . .
Book.create(:title => 'Effective Java中文版',
  :description =>
    %{<p>
       本书介绍了在Java编程中57条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。通过对Java平台设计专家所使用的技术的全面描述，揭示了应该做什么，不应该做什么才能产生清晰、健壮的高效的代码。
       </p>
　　<p>本书中的每条规则都以简短、独立的小文章形式出现，这些小文章包含了详细而精确的建议，以及对语言中许多细微之处的深入分析，并通过例子代码加以进一步说明。贯穿全书的是通用的语言用法的设计模式，以及一些具有启发意义的技巧的技术。
      </p>},
  :image =>   '/images/books/effectivejava.jpg',
  :author => "（美）Joshua Bloch",
  :publisher => "机械工业出版社",
  :publish_date => '2003-01-01',
  :price => 39.00,
  :page_num => 225,
  :category => Category.find_by_name('Java'))
#. . .
Book.create(:title => 'C++ Primer中文版',
  :subtitle => '一本久负盛名的C++经典教程',
  :description =>
    %{<p>
        本书是久负盛名的C++经典教程，其内容是C++大师Stanley B. Lippman丰富的实践经验和C++标准委员会原负责人Josée Lajoie对C++标准深入理解的完美结合，已经帮助全球无数程序员学会了C++。本版对前一版进行了彻底的修订，内容经过了重新组织，更加入了C++ 先驱Barbara E. Moo在C++教学方面的真知灼见。既显著改善了可读性，又充分体现了C++语言的最新进展和当前的业界最佳实践。书中不但新增大量教学辅助内容，用于强调重要的知识点，提醒常见的错误，推荐优秀的编程实践，给出使用提示，还包含大量来自实战的示例和习题。对C++基本概念和技术全面而且权威的阐述，对现代C++编程风格的强调，使本书成为C++初学者的最佳指南；对于中高级程序员，本书也是不可或缺的参考书。本书的前言阐述了 第4版和前一版的不同之处。
      </p>},
  :image =>   '/images/books/primer.jpg',
  :author => "Stanley B.Lippman",
  :publisher => "人民邮电出版社",
  :publish_date => '2006-07-11',
  :price => 99.00,
  :page_num => 900,
  :category => Category.find_by_name('C++'))
# . . .C++
Book.create(:title => 'C++ 程序设计',
  :subtitle => 'C++程序设计',
  :description =>
    %{<p>
        　C++是一种实用的程序设计语言，本书系统地介绍了C++语言，第1章主要讨论C++的语言特点和编程环境，第2章-第7章主要介绍C++语言的表达式及运算、数据类型、语句、函数、指针、程序结构和用C++语言进行程序设计的基本方法。第8章-第11章主要介绍C++语言的类、对象和类的继承、重载、多态性等机制。</p>
　　 <p>本书概念定义准确、结构层次分明、内容循序渐进、叙述深入浅出、分析问题透彻，适合于计算机专业2年制和3年制高职、大专教材，也可作为非计算机专业本科教材，还可作为自学者和计算机应用工程技术人员选用的参考书。
      </p>},
  :image =>   '/images/books/c++programming.jpg',
  :author => " 王准亭",
  :publisher => "机械工业出版社",
  :publish_date => '2006-04',
  :price => 32.00,
  :page_num => 324,
  :category => Category.find_by_name('C++'))
#...ruby
Book.create(:title => 'Programming Ruby 中文版',
  :description =>
    %{<p>
        《Programming Rudy》(中文版)(第2版)适合各种程度的Ruby程序员，无论新手还是老兵，都会从中得到巨大的帮助。
      </p>},
  :image => '/images/books/programmingruby.jpg',
  :author => "托马斯",
  :publisher => "电子工业出版社",
  :publish_date => '2007-03',
  :price => 95.00,
  :page_num => 830,
  :category => Category.find_by_name('Ruby'))
# . . .
Book.create(:title => '应用Rails进行敏捷Web开发',
  :description =>
    %{
　　<p>这是第一本关于Ruby on Rails的著作。</p>
　　<p>全书主要内容分为两大部分。在“构建应用程序”部分中，读者将看到一个完整的“在线购书网站” 示例。在演示的过程中，作者真实地再现了一个完整的迭代式开发过程，让读者亲身体验实际应用开发中遇到的各种问题、以及Rails如何有效解决这些问题。在随后的“Rails框架”部分中，作者深入介绍了Rails框架的各个组成部分。尤为值得一提的是本部分的后几章：作者先后介绍了Web 2.0、Web Service等流行技术在Rails中的支持，然后又凭借丰富的实践经验介绍了Rails在安全性、伸缩性、部署等方面的常见问题和解决方案。</p>
　　<p>除了上述两部分之外，对Rails缺乏了解的读者应该首先阅读“起步”部分，通过一个最简单的示例应用感性了解这个时下热门的web框架。不熟悉Ruby的读者应该阅读“附录”部分中的“Ruby简介”，以便了解Ruby的基本语法与常见用法。整体而言，全书既有直观的实例，又有深入的分析，同时还涵盖了 web应用开发中各方面的相关知识，堪称一部深入浅出的佳作。　　
      </p>},
  :image => '/images/books/awdrails.jpg',
  :author => "Dave Thomas, David Hansson",
  :publisher => "电子工业出版社",
  :publish_date => '2006-07',
  :price => 65.00,
  :page_num => 558,
  :category => Category.find_by_name('Ruby'))
#. . .
Book.create(:title => 'Agile Software Development',
  :subtitle => 'The Cooperative Game',
  :description =>
    %{<p>
　　　　Dr. Cockburn was named in 2007 as one of "The All-Time Top 150 i-Technology Heroes". He is an internationally renowned project witchdoctor and IT strategist, a several-time winner of the Jolt & Productivity book awards. He is best known for describing Software development as a cooperative game, for co-authoring the Agile Development Manifesto, for defining Use Cases and for developing the Initial Response Technique massage form. 。　　
      </p>},
  :image => '/images/books/agilesoft.jpg',
  :author => "Alistair Cockburn",
  :publisher => "Addison-Wesley Professional",
  :publish_date => '2006-10-29',
  :price => 54.99,
  :page_num => 504,
  :category => Category.find_by_name('敏捷开发'))
#. . .
Book.create(:title => '解析极限编程(第二版)(中英文对照)',
  :subtitle => '拥抱变化',
  :description =>
    %{<p>
　　　本书是经典之作。作者在书中提出了一些想法，诸如让开发者为自己的代码写自动化测试，让整个团队每周做计划，因为这些当时很激进的改进小团队开发的想法，这本书获了奖。五年来许多东西改变了，完全重写的第二版将XP的范围扩展到任何大小的团队，建议了基于以下几点的持续改进流程：与卓越软件开发一致的五个核心价值观：11个原则将这些价值观付诸行动；13个基本实践和11个扩展实践帮助你推动开发超越当前的业务和技术决策；通过建立富有信息的共享工作空间来改进团队协作。 无论你是有一个已经和客户紧密联系在一起的小团队，还是有一个在大组织或跨国组织中的大团队，你都会在中发现如下的思想去挑战、启发和鼓励你及你的团队成员去切实改进你们的软件开发。  　
      </p>},
  :image => '/images/books/extreme.jpg',
  :author => "贝克",
  :publisher => "电子工业出版社",
  :publish_date => '2006-5',
  :price => 39.00,
  :page_num => 301,
  :category => Category.find_by_name('敏捷开发'))
#. . .
Book.create(:title => '网页设计创意书',
  :description =>
    %{<p>
　　　本书是经典之作。作者在书中提出了一些想法，诸如让开发者为自己的代码写自动化测试，让整个团队每周做计划，因为这些当时很激进的改进小团队开发的想法，这本书获了奖。五年来许多东西改变了，完全重写的第二版将XP的范围扩展到任何大小的团队，建议了基于以下几点的持续改进流程：与卓越软件开发一致的五个核心价值观：11个原则将这些价值观付诸行动；13个基本实践和11个扩展实践帮助你推动开发超越当前的业务和技术决策；通过建立富有信息的共享工作空间来改进团队协作。 无论你是有一个已经和客户紧密联系在一起的小团队，还是有一个在大组织或跨国组织中的大团队，你都会在中发现如下的思想去挑战、启发和鼓励你及你的团队成员去切实改进你们的软件开发。  　
      </p>},
  :image => '/images/books/webdesign.jpg',
  :author => "Patrick McNeil",
  :publisher => "人民邮电出版社",
  :publish_date => '2010-10-15',
  :price => 45.00,
  :page_num => 250,
  :category => Category.find_by_name('网页设计'))

#. . .
Book.create(:title => '网页设计创意书',
  :description =>
    %{<p>
　　　　本书首先从大处着眼，介绍了不同类型（如博客、论坛、电子商务网站）、不同风格（如怀旧风格、超简洁风格仿古风格）以及具有丰富主题（如自然风光、旧报纸、仿印刷品）的网站。作者通过大量范例介绍了如何为不同型的网站添加不同的功能，从而带来好的用户体验，并为网站提高人气；如何选择合适的风格以及主题来打造与不同、令人过目难忘的网站。随后从小处着手，讲述了如何为网站选用合适的色彩及装饰元素，从而为网站的整设计锦上添花。最后介绍了网页的布局方式，力求为访问者带来更好的视觉享受。</p>
　　<p>本书既适合为初学者开阔视野，又适合为设计师开拓思维。
      </p>},
  :image => '/images/books/webdesign.jpg',
  :author => "Patrick McNeil",
  :publisher => "人民邮电出版社",
  :publish_date => '2010-10-15',
  :price => 45.00,
  :page_num => 250,
  :category => Category.find_by_name('网页设计'))

#. . .
Book.create(:title => 'CSS禅意花园',
  :description =>
    %{<p>
　　　这本书的作者是世界著名的网站设计师，书中的范例来自网站设计领域最著名的网站——CSS Zen Garden（CSS禅意花园）。全书分为两个主要部分。第1章为第一部分，讨论网站“CSS禅意花同”及其最基本的主题，包含正确的标记结构和灵活性规划等。第二部分包括6章，占据了书中的大部分篇幅。</p>
　　<p>每章剖析“CSS禅意花园”收录的6件设计作品，这些作品围绕一个主要的设计概念展开，如文字的使用等。通过探索36件设计作品面临的挑战和解决的问题，读者将洞悉主要的Web设计原则以及它们运用的CSS布局技巧，理解CSS设计的精髓，恰当地处理图形和字体来创建界面优美、性能优良且具有强大生命力的网站。
      </p>},
  :image => '/images/books/cssgarden.jpg',
  :author => " [美] Dave Shea/Molly E. Holzschlag",
  :publisher => "人民邮电出版社",
  :publish_date => '2007-06-15',
  :price => 49.00,
  :page_num => 273,
  :category => Category.find_by_name('网页设计'))

