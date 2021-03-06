module Goldberg
  class Permission < ActiveRecord::Base
    include GoldbergModel

    validates_presence_of :name
    validates_uniqueness_of :name

    # Find Permissions for a Role ID or an array of Role IDs.

    def Permission.find_for_role(role_ids)
      return find_by_sql( ["select p.* from #{prefix}permissions p inner join #{prefix}roles_permissions rp on p.id = rp.permission_id where role_id in (?) order by p.name", role_ids] )
    end
    

    # Find all Permissions for a Role.  This method gets the hierarchy
    # for the given Role and uses that to get all the Permissions for
    # the Role and its ancestors.

    def Permission.find_all_for_role(role)
      roles = role.get_parents
      roles << role
      return find_for_role(roles.collect(&:id))
    end


    # Find Permissions that are not already associated with the given
    # Role ID.

    def Permission.find_not_for_role(role_id)
      return find_by_sql( ["select p.* from #{prefix}permissions p where id not in (select permission_id from #{prefix}roles_permissions rp where role_id in (?)) order by name", role_id] )
    end

  end
end
