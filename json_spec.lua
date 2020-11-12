local json = require("json")


describe('json', function()
    it('sortkey', function()
       assert.are.equal([[{"a":"2","b":"1"}]], json.encode({b = '1', a = '2'}, {sortkey = true}))
       assert.are.equal([=[[1,{"a":"2","b":"1"}]]=], json.encode({1, {b = '1', a = '2'}}, {sortkey = true}))
    end)
end)
