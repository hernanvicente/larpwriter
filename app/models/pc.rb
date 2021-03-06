class Pc < ActiveRecord::Base
  include IsAsset, IsPcOrNpc, HasAttachedPicture, IsTaggable, HasDocuments

  belongs_to :player

  def player_or_npc_player
    player
  end
end
