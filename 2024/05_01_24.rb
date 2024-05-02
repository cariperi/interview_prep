# CodeWars Kata: Pagination Helper
# https://www.codewars.com/kata/515bb423de843ea99400000a/train/ruby

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @pages = collection.each_slice(items_per_page).to_a
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @item_count ||= @collection.length
  end

  # returns the number of pages
  def page_count
    @page_count ||= @pages.length
  end

  # returns the number of items on the current page. page_idx is zero based.
  # this method should return -1 for page_idx values that are out of range
  def page_item_count(page_idx)
    return -1 unless page_idx.between?(0, page_count - 1)

    @pages[page_idx].length
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 unless item_index.between?(0, item_count - 1)

    item_index / @items_per_page
  end
end


#################################
# TEST CASES - UNCOMMENT TO RUN #
#################################

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)

# PAGE COUNT
# pp helper.page_count() == 2

# ITEM COUNT
# pp helper.item_count() == 6

# PAGE ITEM COUNT
# pp helper.page_item_count(0) == 4
# pp helper.page_item_count(1) == 2
# pp helper.page_item_count(2) == -1 #since page is invalid

# PAGE INDEX
# pp helper.page_index(5) == 1
# pp helper.page_index(2) == 0
# pp helper.page_index(20) == -1
# pp helper.page_index(-10) == -1 #because negative indexes are invalid



# INPUT DATA TYPE
# Array, integer

# OUTPUT DATA TYPE
# Integer

# ASSUMPTIONS
# It does not matter what data type(s) the input array elements are
# Return -1 if case is invalid

# QUESTIONS
# What do we want to store in the class? Store pages versus calculate every time?
# Could use a hash or a nested array