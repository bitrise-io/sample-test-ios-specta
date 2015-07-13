#import <Specta/Specta.h> // #import "Specta.h" if you're using libSpecta.a
#import <Expecta/Expecta.h>

#import "ConnectionHelper.h"

SpecBegin(ConnectionTesting)

describe(@"Connection Testing", ^{
    beforeAll(^{
        // This is run once and only once before all of the examples
        // in this group and before any beforeEach blocks.
    });
    
    beforeEach(^{
        // This is run before each example.
    });
    
    it(@"should do stuff", ^{
        // This is an example block. Place your assertions here.
        expect([ConnectionHelper testConnection]).to.equal(true);
    });
    
    it(@"should do some stuff asynchronously", ^{
        waitUntil(^(DoneCallback done) {
            // Async example blocks need to invoke done() callback.
            done();
        });
    });
    
    describe(@"Nested examples", ^{
        it(@"should do even more stuff", ^{
            // ...
        });
    });
    
    pending(@"pending example");
    
    pending(@"another pending example", ^{
        // ...
    });
    
    afterEach(^{
        // This is run after each example.
    });
    
    afterAll(^{
        // This is run once and only once after all of the examples
        // in this group and after any afterEach blocks.
    });
});

SpecEnd
