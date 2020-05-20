import { expect } from 'chai'
import TodoModel from '../src/todoModel'
import TodoCollection from '../src/todoCollection'

describe('ToDo Model',() => {
    it('should return object that contains fields : id, title, completed', () => {
        const newToDoModel = TodoModel(0, 'Android');
        expect (newToDoModel).to.eql({
            id : 0,
            title : 'Android',
            completed : false
        });      
    });
});


describe('ToDo Collection',() => {
    it('should return array of 3 items', () => {
        const newToDoCollection = TodoCollection('Android', 'React', 'Gym');
        expect(newToDoCollection.get().length).to.equal(3);
    });

    it('should return correct todo Object', () => {
        const newToDoCollection = TodoCollection('Android', 'React', 'Gym');
        expect(newToDoCollection.get()[1]).to.eql({
            id : 1,
            title : 'React',
            completed  : false

        });
    });

    it('should add todo object', () => {
        const newToDoCollection = TodoCollection();
        newToDoCollection.add('learn new tech');
        expect(newToDoCollection.get()[0]).to.eql({
            id : 0,
            title : 'learn new tech',
            completed : false
        });
    });

    it('should remove object', () => {
        const newToDoCollection = TodoCollection('Android');
        newToDoCollection.remove(0);
        expect(newToDoCollection.get().length).to.equal(0);
    });


    it('should toggle object', () => {
        const newToDoCollection = TodoCollection('Android');
        newToDoCollection.toggleCompleted(0);
        expect(newToDoCollection.get()[0]).to.eql({
            id : 0,
            title : 'Android',
            completed : true

        });
    });
});