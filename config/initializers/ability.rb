RAILSYARD_PLUGIN_ABILITIES ||= []
RAILSYARD_PLUGIN_ABILITIES << Proc.new() { |ability, user|
  if user.role? :article_writer
    ability.can :read, [Saphira::FileItem]
  elsif user.role? :premium_user
    ability.can :read, [Saphira::FileItem]
  else
    ability.can :read, [Saphira::FileItem]
  end
}