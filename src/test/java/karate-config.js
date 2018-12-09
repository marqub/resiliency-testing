function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.configure('ssl',true);
  karate.configure('ssl','TLSv1.1');

  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}