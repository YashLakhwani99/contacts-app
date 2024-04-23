import 'package:contacts_app/data/Person/person.dart';
import 'package:contacts_app/data/Person/person_mapper.dart';
import 'package:contacts_app/domain/Person/person_entity.dart';

abstract class PersonUseCase {
  Future<bool> addContact(Person person);
  Future<List<PersonEntity>> getContacts();
}

class PersonUseCaseImpl extends PersonUseCase {
  PersonMapper _personMapper = PersonMapper();
  @override
  Future<bool> addContact(Person person) async {
    bool successfull = await _personMapper.addContact(person);
    return successfull;
  }

  @override
  Future<List<PersonEntity>> getContacts() async {
    List<PersonEntity> contactsList = await _personMapper.getContacts();
    return contactsList;
  }
}
