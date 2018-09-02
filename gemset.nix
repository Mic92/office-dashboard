{
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ziy6xk31k4fs115cdkba1ys4i8nzcyri7a2jig7nx7k5h7li6l2";
      type = "gem";
    };
    version = "5.2.1";
  };
  backports = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hshjxww2h7s0dk57njrygq4zpp0nlqrjfya7zwm27iq3rhc3y8g";
      type = "gem";
    };
    version = "3.11.4";
  };
  byebug = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10znc1hjv8n686hhpl08f3m2g6h08a4b83nxblqwy2kqamkxcqf8";
      type = "gem";
    };
    version = "10.0.2";
  };
  coderay = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15vav4bhcc2x3jmi3izb11l4d9f3xv8hp2fszb7iqmpsccv1pz4y";
      type = "gem";
    };
    version = "1.1.2";
  };
  coffee-script = {
    dependencies = ["coffee-script-source" "execjs"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rc7scyk7mnpfxqv5yy4y5q1hx3i7q3ahplcp4bq2g5r24g2izl2";
      type = "gem";
    };
    version = "2.4.1";
  };
  coffee-script-source = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1907v9q1zcqmmyqzhzych5l7qifgls2rlbnbhy5vzyr7i7yicaz1";
      type = "gem";
    };
    version = "1.12.2";
  };
  concurrent-ruby = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "183lszf5gx84kcpb779v6a2y0mx9sssy8dgppng1z9a505nj1qcf";
      type = "gem";
    };
    version = "1.0.5";
  };
  daemons = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lxqq6dgb8xhliywar2lvkwqy2ssraf9dk4b501pb4ixc2mvxbp2";
      type = "gem";
    };
    version = "1.2.6";
  };
  et-orbi = {
    dependencies = ["tzinfo"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1cfgsmggpl2imj6lb9nnlk4jzhmwiy68dg0n601gn3lb5xlwajza";
      type = "gem";
    };
    version = "1.1.5";
  };
  eventmachine = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wh9aqb0skz80fhfn66lbpr4f86ya2z5rx6gm5xlfhd05bj1ch4r";
      type = "gem";
    };
    version = "1.2.7";
  };
  execjs = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yz55sf2nd3l666ms6xr18sm2aggcvmb8qr3v53lr4rir32y1yp1";
      type = "gem";
    };
    version = "2.7.0";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ppvmla21hssvrfm8g1n2fnb4lxn4yhy9qmmba0imanflgldrjmr";
      type = "gem";
    };
    version = "1.1.0";
  };
  mail = {
    dependencies = ["mini_mime"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10dyifazss9mgdzdv08p47p344wmphp5pkh5i73s7c04ra8y6ahz";
      type = "gem";
    };
    version = "2.7.0";
  };
  method_source = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0xqj21j3vfq4ldia6i2akhn2qd84m0iqcnsl49kfpq3xk6x0dzgn";
      type = "gem";
    };
    version = "0.9.0";
  };
  mini_mime = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1q4pshq387lzv9m39jv32vwb8wrq3wc4jwgl4jk209r4l33v09d3";
      type = "gem";
    };
    version = "1.0.1";
  };
  minitest = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0icglrhghgwdlnzzp4jf76b0mbc71s80njn5afyfjn4wqji8mqbq";
      type = "gem";
    };
    version = "5.11.3";
  };
  multi_json = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rl0qy4inf1mp8mybfk56dfga0mvx97zwpmq5xmiwl5r770171nv";
      type = "gem";
    };
    version = "1.13.1";
  };
  mustermann = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lycgkmnyy0bf29nnd2zql5a6pcf8sp69g9v4xw0gcfcxgpwp7i1";
      type = "gem";
    };
    version = "1.0.3";
  };
  pry = {
    dependencies = ["coderay" "method_source"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mh312k3y94sj0pi160wpia0ps8f4kmzvm505i6bvwynfdh7v30g";
      type = "gem";
    };
    version = "0.11.3";
  };
  pry-byebug = {
    dependencies = ["byebug" "pry"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0y2758593i2ij0nhmv0j1pbdfx2cgi52ns6wkij0frgnk2lf650g";
      type = "gem";
    };
    version = "3.6.0";
  };
  rack = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "158hbn7rlc3czp2vivvam44dv6vmzz16qrh5dbzhfxbfsgiyrqw1";
      type = "gem";
    };
    version = "2.0.5";
  };
  rack-protection = {
    dependencies = ["rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1z5598qipilmnf45428jnxi63ykrgvnyywa5ckpr52zv2vpd8jdp";
      type = "gem";
    };
    version = "2.0.3";
  };
  rufus-scheduler = {
    dependencies = ["et-orbi"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "07xcdm0wvkvn19hd8x76fwcjm8f711lg5ax90q38clkdnlssv8mw";
      type = "gem";
    };
    version = "3.4.2";
  };
  sass = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kfpcwh8dgw4lc81qglkvjl73689jy3g7196zkxm4fpskg1p5lkw";
      type = "gem";
    };
    version = "3.4.25";
  };
  sinatra = {
    dependencies = ["mustermann" "rack" "rack-protection" "tilt"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kyi55q4k4idv31h7l53hw0mnh50dwwrrsfm35j52jy7fc993m9r";
      type = "gem";
    };
    version = "2.0.3";
  };
  sinatra-contrib = {
    dependencies = ["activesupport" "backports" "multi_json" "mustermann" "rack-protection" "sinatra" "tilt"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fk8pnvzlylqpnxnvd888ji217552xvvrfpzn8wh2njkz0pk28fc";
      type = "gem";
    };
    version = "2.0.3";
  };
  smashing = {
    dependencies = ["coffee-script" "execjs" "rack" "rufus-scheduler" "sass" "sinatra" "sinatra-contrib" "sprockets" "thin" "thor"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qpyzkr38kiih7rgzpzwr09axck8aljz78s57xm7hbf6qdyc5j6h";
      type = "gem";
    };
    version = "1.1.0";
  };
  sprockets = {
    dependencies = ["concurrent-ruby" "rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "182jw5a0fbqah5w9jancvfmjbk88h8bxdbwnl4d3q809rpxdg8ay";
      type = "gem";
    };
    version = "3.7.2";
  };
  thin = {
    dependencies = ["daemons" "eventmachine" "rack"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nagbf9pwy1vg09k6j4xqhbjjzrg5dwzvkn4ffvlj76fsn6vv61f";
      type = "gem";
    };
    version = "1.7.2";
  };
  thor = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01n5dv9kql60m6a00zc0r66jvaxx98qhdny3klyj0p3w34pad2ns";
      type = "gem";
    };
    version = "0.19.4";
  };
  thread_safe = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      type = "gem";
    };
    version = "0.3.6";
  };
  tilt = {
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0020mrgdf11q23hm1ddd6fv691l51vi10af00f137ilcdb2ycfra";
      type = "gem";
    };
    version = "2.0.8";
  };
  tzinfo = {
    dependencies = ["thread_safe"];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1fjx9j327xpkkdlxwmkl3a8wqj7i4l4jwlrv3z13mg95z9wl253z";
      type = "gem";
    };
    version = "1.2.5";
  };
}